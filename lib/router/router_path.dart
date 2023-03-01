import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:riverpod_testbed/router/connection.dart';

part 'router_path.freezed.dart';

@freezed
class RouterPath with _$RouterPath {
  factory RouterPath.home() = HomePath;
  factory RouterPath.selection() = SelectionPath;
  factory RouterPath.details(Connection connection) = ConnectionPath;
}