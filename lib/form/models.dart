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
  const factory UserData({String? firstName, String? lastName, String? email}) = _UserData;
  

}
