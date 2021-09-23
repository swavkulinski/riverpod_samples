import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_testbed/form/models.dart';
import 'package:riverpod_testbed/form/user_form_state_notifier.dart';

/*final formProvider = Provider<GlobalKey<FormState>>((ref) => GlobalKey<FormState>());

final formStateProvider = Provider<FormState>((ref) {
  final state = ref.read(formProvider).currentState!;
  return state;
});
*/
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
    StateNotifierProvider<UserDataStateNotifier, UserData>((ref) => UserDataStateNotifier());
