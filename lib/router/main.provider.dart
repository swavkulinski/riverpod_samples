import 'package:riverpod/riverpod.dart';
import 'connection.dart';


/// Dummy data for connections
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