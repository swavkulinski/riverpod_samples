import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'state.dart';

final stateProvider = StateProvider<AppState>((_) => AppState(a: 'a', b: 'b'));

final addAProvider = Provider<Reduce>((ref) {
  final state = ref.watch(stateProvider);
  return () {
    state.state = addA(state.state);
  };
});

final addBProvider = Provider<Reduce>((ref) {
  final state = ref.watch(stateProvider);
  return () {
    state.state = addB(state.state);
  };
});

final removeAProvider = Provider<Reduce>((ref) {
  final state = ref.watch(stateProvider);
  return () {
    state.state = removeA(state.state);
  };
});

final removeBProvider = Provider<Reduce>((ref) {
  final state = ref.watch(stateProvider);
  return () {
    state.state = removeB(state.state);
  };
});
