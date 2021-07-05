import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'main.dart';

part 'router.freezed.dart';

@freezed
abstract class ConnectionPath with _$ConnectionPath {
  const factory ConnectionPath.home() = HomePath;
  const factory ConnectionPath.selection() = SelectionPath;
  const factory ConnectionPath.details() = DetailsPath;
}

class ConnectionRouterDelegate extends RouterDelegate<ConnectionPath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<ConnectionPath> {
  final Ref ref;

  final List<MaterialPage> _stack = [_homePage];

  static final _homePage = MaterialPage(key: ValueKey('/'), child: HomePage());
  static final _selectionPage =
      MaterialPage(key: ValueKey('/connections'), child: ConnectionsPage());
  static final _detailsPage = MaterialPage(
      key: ValueKey('/connectionDetails'), child: ConnectionDetailsPage());

  ConnectionRouterDelegate(this.ref);

  @override
  Widget build(BuildContext context) {
    return Navigator(
        key: navigatorKey,
        pages: _stack,
        onPopPage: (route, result) {
          final isSuccess = route.didPop(result);
          _stack.removeLast();
          return isSuccess;
        });
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => GlobalKey<NavigatorState>();

  @override
  Future<void> setNewRoutePath(ConnectionPath path) async {
    path.when(
      home: () => goHome(),
      selection: () => goSelection(),
      details: () => goDetails(),
    );
  }

  void goHome() {
    if (!_stack.contains(_homePage)) {
      _stack.clear();
      _stack.add(_homePage);
      notifyListeners();
    }
  }

  void goSelection() {
    if (!_stack.contains(_selectionPage)) {
      _stack.add(_selectionPage);
      notifyListeners();
    }
  }

  void goDetails() {
    if (!_stack.contains(_detailsPage)) {
      _stack.add(_detailsPage);
      notifyListeners();
    }
  }
}

class ConnectionRouteInformationParser
    extends RouteInformationParser<ConnectionPath> {
  @override
  Future<ConnectionPath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? '');

    if (uri.pathSegments.length == 0) return HomePath();
    if (uri.pathSegments.last == 'connections') return SelectionPath();
    if (uri.pathSegments.last == 'connectionDetails') return DetailsPath();

    return HomePath();
  }
}
