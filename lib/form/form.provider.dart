import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_testbed/form/models.dart';
import 'package:riverpod_testbed/form/user_form_state_notifier.dart';

final formKeyProvider = Provider<GlobalKey<FormState>>((ref) => GlobalKey<FormState>());

final formStateProvider = Provider<FormState>((ref) {
  final state = ref.watch(formKeyProvider).currentState!;
  return state;
});

final userDataStateNotifierProvider =
    StateNotifierProvider<UserDataStateNotifier, UserData>((ref) => UserDataStateNotifier(ref));

final firstNameControllerProvider =
    Provider<TextEditingController>((ref) => TextEditingController());

final lastNameControllerProvider =
    Provider<TextEditingController>((ref) => TextEditingController());

final emailControllerProvider = Provider<TextEditingController>((ref) => TextEditingController());

final nonEmptyTextValidator = Provider<String? Function(String?)>((_) => (input) {
      if (input?.isEmpty ?? true) {
        return 'Field cannot be empty';
      } else {
        return null;
      }
    });
