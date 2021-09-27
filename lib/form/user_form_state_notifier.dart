import 'package:riverpod/riverpod.dart';
import 'package:riverpod_testbed/form/form.provider.dart';
import 'package:riverpod_testbed/form/models.dart';

class UserDataStateNotifier extends StateNotifier<UserData> {
  final ProviderReference ref;
  UserDataStateNotifier(this.ref) : super(UserData());

  set firstName(String value) => state = state.copyWith(firstName:value);
  set lastName(String value) => state = state.copyWith(lastName:value);
  set email(String value) => state = state.copyWith(email:value);

  void reset() {
    state = UserData();
    ref.watch(formStateProvider).reset();
  }
}
