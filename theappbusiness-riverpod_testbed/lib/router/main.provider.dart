import 'package:riverpod/riverpod.dart';
import 'package:riverpod_testbed/router/router.dart';

import 'connection.dart';

final connectionsProvider = StateProvider<List<Connection>>((ref) => [
      Connection('A', 'B', DateTime.now()),
      Connection('B', 'C', DateTime.now()),
      Connection('A', 'C', DateTime.now()),
      Connection('A', 'D', DateTime.now()),
      Connection('D', 'B', DateTime.now()),
      Connection('C', 'B', DateTime.now()),
      Connection('C', 'A', DateTime.now()),
    ]);

final selectedConnectionProvider = StateProvider<Connection?>((ref) => null);

final routerDelegateProvider =
    Provider<ConnectionRouterDelegate>((ref) => ConnectionRouterDelegate(ref));

final routeInformationParser = Provider<ConnectionRouteInformationParser>(
    (_) => ConnectionRouteInformationParser());
