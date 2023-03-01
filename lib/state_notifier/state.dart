import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';

part 'state.freezed.dart';

@freezed
class AppState with _$AppState {
  factory AppState({required String a, required String b}) = _AppState;
}

class AppStateNotifier extends Notifier<AppState> {
  addA() => state = state.copyWith(a: state.a + "a");

  addB() => state = state.copyWith(b: state.b + "b");

  removeA() =>
      state = state.copyWith(a: state.a.isEmpty ? "" : state.a.substring(0, state.a.length - 1));

  removeB() =>
      state = state.copyWith(b: state.b.isEmpty ? "" : state.b.substring(0, state.b.length - 1));

  @override
  AppState build() => AppState(a: "", b: "");
}
