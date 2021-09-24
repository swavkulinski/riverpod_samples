import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_testbed/form/models.dart';
import 'package:riverpod_testbed/form/user_form_state_notifier.dart';

final formKeyProvider = Provider<GlobalKey<FormState>>((ref) => GlobalKey<FormState>());

final formStateProvider = Provider<FormState>((ref) {
  final state = ref.read(formKeyProvider).currentState!;
  return state;
});

final containsTextValidatorProvider = Provider<FormFieldValidator<String>>((_) => (input) {
      print('containsTextValidator');
      if (input == null || input.isEmpty)
        return 'Dis is baad!';
      else
        return null;
    });

final userFormStateNotifierProvider = StateNotifierProvider<UserFormStateNotifier, UserFormState>(
    (ref) => UserFormStateNotifier(ref));

final userDataStateNotifierProvider =
    StateNotifierProvider<UserDataStateNotifier, UserData>((ref) => UserDataStateNotifier(ref));

final textControllerProvider =
    Provider.family<TextEditingController, String>((ref, a) => TextEditingController());

final nonEmptyTextValidator = Provider<String? Function(String?)>((_) => (input) {
      if (input?.isEmpty ?? true) {
        return 'Field cannot be empty';
      } else {
        return null;
      }
    });

final isEmailValidator = Provider<String? Function(String?)>((_) => (input) {
  final regex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return regex.hasMatch(input?? '') ? null : 'This is not an email';
    });
