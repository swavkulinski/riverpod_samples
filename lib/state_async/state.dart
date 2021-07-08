import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';

part 'state.freezed.dart';

@freezed
class AppState with _$AppState {
  factory AppState({required String a, required String b}) = _AppState;
}

class AppStateController extends StateNotifier<AppState> {
  AppStateController() : super(AppState(a: 'a', b: 'b'));

  addA() => state = state.copyWith(a: state.a + "a");

  addB() => state = state.copyWith(b: state.b + "b");

  removeA() => state = state.copyWith(
      a: state.a.isEmpty ? "" : state.a.substring(0, state.a.length - 1));

  removeB() => state = state.copyWith(
      b: state.b.isEmpty ? "" : state.b.substring(0, state.b.length - 1));

  loadAppState() => loadResponse().then((value) => value.when(
      unauthorised: () => print('unauthorised'),
      badRequest: () => print('bad request'),
      appState: (value) => state = value));
}

Future<Response> loadResponse() => Future.delayed(
    Duration(seconds: 2), () => AppStateResponse(AppState(a: 'x', b: 'y')));

@freezed
class Response with _$Response {
  const factory Response.unauthorised() = Unauthorized;
  const factory Response.badRequest() = BadRequest;
  const factory Response.appState(AppState appState) = AppStateResponse;
}
