import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_testbed/form/form.provider.dart';
import 'package:riverpod_testbed/form/models.dart';

class UserFormStateNotifier extends StateNotifier<UserFormState> {
  final ProviderReference ref;
  UserFormStateNotifier(this.ref) : super(EmptyFormState()) {
    ref.read(userDataStateNotifierProvider.notifier).addListener((data) {
      state.maybeWhen(
        orElse: () {},
        empty: () => _setCompleteIfValid(data),
        incomplete: () => _setCompleteIfValid(data),
      );
    });
  }

  void submit() {
    state.when(
        empty: _invalidData,
        incomplete: _invalidData,
        completed: () {
          final data = ref.read(userDataStateNotifierProvider);
          print('submitting ${data.firstName} ${data.lastName} ${data.email}');
        },
        submitted: _alreadySubmitted);
  }

  void reset() {
    ref.watch(userDataStateNotifierProvider.notifier).reset();
    state = EmptyFormState();
    print('Form reset');
  }

  void _setCompleteIfValid(UserData data) {
    if (ref.read(userDataStateNotifierProvider.notifier).isValid) state = CompletedFormState();
  }

  void _invalidData() {}
  void _alreadySubmitted() {
    print('already submitted');
  }
}

class UserDataStateNotifier extends StateNotifier<UserData> {
  UserDataStateNotifier() : super(UserData());

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  set firstName(String firstName) => state = state.copyWith(firstName: firstName);

  set lastName(String lastName) => state = state.copyWith(lastName: lastName);

  set email(String email) => state = state.copyWith(email: email);

  void reset() {
    state = UserData();
    firstNameController.clear();
    lastNameController.clear();
    emailController.clear();
    
  }

  bool get isValid =>
      (state.firstName?.isNotEmpty ?? false) &&
      (state.lastName?.isNotEmpty ?? false) &&
      (state.email?.isNotEmpty ?? false);
}
