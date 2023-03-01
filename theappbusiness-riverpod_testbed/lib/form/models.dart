import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';

@freezed
class UserFormState with _$UserFormState {
  const UserFormState._();
  const factory UserFormState.empty() = EmptyFormState;
  const factory UserFormState.incomplete() = IncompleteFormState;
  const factory UserFormState.completed() = CompletedFormState;
  const factory UserFormState.submitted() = SubmittedFormState;
}

@freezed
class UserData with _$UserData {
  const UserData._();
  const factory UserData({String? firstName, String? lastName, String? email}) = _UserData;

  bool get isValid =>
      (firstName?.isNotEmpty ?? false) && (lastName?.isNotEmpty ?? false) && _isEmail(email);

  bool get isEmpty =>
      (firstName?.isEmpty ?? true) && (lastName?.isEmpty ?? true) && (email?.isEmpty ?? true);

  bool _isEmail(input) {
    final regex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return regex.hasMatch(input ?? '') ? true : false;
  }
}
