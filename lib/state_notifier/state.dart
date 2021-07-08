import 'package:riverpod/riverpod.dart';

class AppState{
  String _a;
  String get a => _a;

  String _b;
  String get b => _b;

  AppState({required String a, required String b})
      : this._a = a,
        this._b = b;

  AppState from({String? a, String? b}) =>
      AppState(a: a ?? this._a, b: b ?? this._b);


}

class AppStateController extends StateNotifier<AppState> {
  AppStateController() : super(AppState(a: 'a', b: 'b'));

addA() => state = state.from(a: state.a + "a");

addB() => state = state.from(b: state.b + "b");

removeA() => state = state.from(
    a: state.a.isEmpty ? "" : state.a.substring(0, state.a.length - 1));

removeB() => state = state.from(
    b: state.b.isEmpty ? "" : state.b.substring(0, state.b.length - 1));
}



