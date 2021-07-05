import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_testbed/form/models.dart';
import 'package:riverpod_testbed/form/user_data_state_notifier.dart';

final formKeyProvider = Provider<GlobalKey<FormState>>((ref) => GlobalKey<FormState>());

final formStateProvider = Provider<FormState>((ref) {
  final state = ref.watch(formKeyProvider).currentState!;
  return state;
});

final userDataStateNotifierProvider =
    StateNotifierProvider<UserDataStateNotifier, UserData>((ref) => UserDataStateNotifier(ref));
