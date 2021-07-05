class AppState {
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

typedef Reduce();

AppState addA(AppState current) => current.from(a: current.a + "a");
AppState addB(AppState current) => current.from(b: current.b + "b");

AppState removeA(AppState current) => current.from(
    a: current.a.isEmpty ? "" : current.a.substring(0, current.a.length - 1));
AppState removeB(AppState current) => current.from(
    b: current.b.isEmpty ? "" : current.b.substring(0, current.b.length - 1));
