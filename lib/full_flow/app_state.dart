import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  factory AppState({required Response response}) = _AppState;
}

@freezed
class Response with _$Response {
  const factory Response.undefined() = Undefined;
  const factory Response.unauthorised() = Unauthorized;
  const factory Response.badRequest() = BadRequest;
  const factory Response.appState(String value) = AppStateResponse;
}

class AppStateRepository extends StateNotifier<AppState> {
  AppStateRepository() : super(AppState(response: Undefined()));

  void set appState(AppState newAppState) => state = newAppState;
  AppState get appState => state;
}
