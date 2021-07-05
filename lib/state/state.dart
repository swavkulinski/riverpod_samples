class AppState {
  
  String _a;
  String get a => _a;

  String _b;
  String get b => _b;
  
  AppState({required String a, required String b})
      : this._a = a,
        this._b = b;
}
