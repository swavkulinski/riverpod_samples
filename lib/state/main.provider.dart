import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'state.dart';

final stateProvider = StateProvider<AppState>((_) => AppState(a: 'a', b: 'b'));

final addAProvider = Provider<Reduce>((ref) {
  final notifierA = ref.watch(stateProvider.notifier);
  return () {
    notifierA.state = addA(notifierA.state);
  };
});

final addBProvider = Provider<Reduce>((ref) {
  final notifierB = ref.watch(stateProvider.notifier);
  return () {
    notifierB.state = addB(notifierB.state);
  };
});

final removeAProvider = Provider<Reduce>((ref) {
  final notifierA = ref.watch(stateProvider.notifier);
  return () {
    notifierA.state = removeA(notifierA.state);
  };
});

final removeBProvider = Provider<Reduce>((ref) {
  final notifierB = ref.watch(stateProvider.notifier);
  return () {
    notifierB.state = removeB(notifierB.state);
  };
});
