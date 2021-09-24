import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_testbed/form/form.provider.dart';
import 'package:riverpod_testbed/form/models.dart';

class UserFormStateNotifier extends StateNotifier<UserFormState> {
  final ProviderReference ref;
  UserFormStateNotifier(this.ref)
      : firstNameController = ref.watch(textControllerProvider('firstName')),
        lastNameController = ref.watch(textControllerProvider('lastName')),
        emailController = ref.watch(textControllerProvider('email')),
        super(EmptyFormState()) {
    final userDataStateNotifier = ref.read(userDataStateNotifierProvider.notifier);
    firstNameController.addListener(() {
      userDataStateNotifier.firstName = firstNameController.text;
    });
    lastNameController.addListener(() {
      userDataStateNotifier.lastName = lastNameController.text;
    });
    emailController.addListener(() {
      userDataStateNotifier.email = emailController.text;
    });

    userDataStateNotifier.addListener((data) {
      state.maybeWhen(
        orElse: () {},
        empty: () => !ref.read(userDataStateNotifierProvider.notifier).isEmpty ? state = IncompleteFormState() : null,
        incomplete: () => _setCompleteIfValid(data),
      );
    });
  }

  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController emailController;

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
    //firstNameController.clear();
    //lastNameController.clear();
    //emailController.clear();
    ref.watch(formStateProvider).reset();
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
  final ProviderReference ref;
  UserDataStateNotifier(this.ref) : super(UserData());

  set firstName(String firstName) => state = state.copyWith(firstName: firstName);

  set lastName(String lastName) => state = state.copyWith(lastName: lastName);

  set email(String email) => state = state.copyWith(email: email);

  void reset() {
    state = UserData();
  }

  bool get isValid =>
      (state.firstName?.isNotEmpty ?? false) &&
      (state.lastName?.isNotEmpty ?? false) &&
      (ref.read(isEmailValidator)(state.email) == null);

  bool get isEmpty =>
      (state.firstName?.isEmpty ?? true) &&
      (state.lastName?.isEmpty ?? true) &&
      (state.email?.isEmpty ?? true);
}
