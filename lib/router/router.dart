import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_testbed/router/connection.dart';
import 'package:riverpod_testbed/router/router_path.dart';

import 'main.dart';

/// Defines [MaterialPage] for [HomePage]
final _homePage = MaterialPage<RouterPath>(key: ValueKey('/'), child: HomePage());

/// Defines [MaterialPage] for [ConnectionsPage]
final _selectionPage = MaterialPage<RouterPath>(key: ValueKey('/connections'), child: ConnectionsPage());


/// Returns [MaterialPage] carying [ConnectionDetailsPage] with required [Connection] parameter
/// Used by [ConnectionRouterDelegate.goDetails]
MaterialPage<RouterPath> _detailsPage(Connection connection) =>
    MaterialPage<RouterPath>(key: ValueKey('/connectionDetails'), child: ConnectionDetailsPage(connection:connection),);

final routerDelegateProvider =
    Provider<ConnectionRouterDelegate>((ref) => ConnectionRouterDelegate(ref));

final routeInformationParser =
    Provider<ConnectionRouteInformationParser>((_) => ConnectionRouteInformationParser());

final backstackStateProvider = StateProvider<List<MaterialPage<RouterPath>>>((_) => [_homePage]);

final globalNavigatorKeyProvider =
    Provider<GlobalKey<NavigatorState>>((_) => GlobalKey<NavigatorState>());

class ConnectionRouterDelegate extends RouterDelegate<RouterPath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<RouterPath> {
  final Ref ref;

  List<MaterialPage> backstack = [_homePage];

  ConnectionRouterDelegate(this.ref);

  @override
  Widget build(BuildContext context) {
    return Navigator(
        key: navigatorKey,
        pages: backstack,
        onPopPage: (route, result) {
          route.didPop(result);
          return pop();
        });
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => ref.read(globalNavigatorKeyProvider);

  @override
  Future<void> setNewRoutePath(RouterPath path) async {
    path.when(
      home: () => goHome(),
      selection: () => goSelection(),
      details: (connection) => goDetails(connection),
    );
    
  }

  void _setStack(List<MaterialPage> stack) {
    if (stack != backstack) {
      backstack = stack;
      // important to let Navigator know we are modifying a stack 
      // it will cause build() to be called
      notifyListeners();
    }
  }

  /// Call to navigate to [HomePage]
  void goHome() {
    _setStack([_homePage]);
  }

  /// Call to navigate to [ConnectionsPage]
  void goSelection() {
    if (!backstack.contains(_selectionPage)) {
      _setStack([...backstack, _selectionPage]);
    }
  }

  /// Call to navigate to [DetailsPage]
  void goDetails(Connection connection) {
    if (!backstack.contains(_detailsPage)) {
      _setStack([...backstack, _detailsPage(connection)]);
    }
  }

  /// Pops a stack
  bool pop() {
    if (backstack != [_homePage]) {
      _setStack([...backstack..removeLast()]);
    }
    return backstack.length == 1;
  }
}

class ConnectionRouteInformationParser extends RouteInformationParser<RouterPath> {
  @override
  Future<RouterPath> parseRouteInformation(RouteInformation routeInformation) async {
    debugPrint('RouteInformationParser.parseRouteInformation()');
    final uri = Uri.parse(routeInformation.location ?? '/');
    if (uri.path == '/') return HomePath();
    if (uri.pathSegments.last == 'connections') return SelectionPath();
    if (uri.pathSegments.last == 'connectionDetails') return ConnectionPath(routeInformation.state as Connection);

    return HomePath();
  }
}
