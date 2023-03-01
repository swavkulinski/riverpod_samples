// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserFormStateTearOff {
  const _$UserFormStateTearOff();

  EmptyFormState empty() {
    return const EmptyFormState();
  }

  IncompleteFormState incomplete() {
    return const IncompleteFormState();
  }

  CompletedFormState completed() {
    return const CompletedFormState();
  }

  SubmittedFormState submitted() {
    return const SubmittedFormState();
  }
}

/// @nodoc
const $UserFormState = _$UserFormStateTearOff();

/// @nodoc
mixin _$UserFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() incomplete,
    required TResult Function() completed,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? incomplete,
    TResult Function()? completed,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyFormState value) empty,
    required TResult Function(IncompleteFormState value) incomplete,
    required TResult Function(CompletedFormState value) completed,
    required TResult Function(SubmittedFormState value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFormState value)? empty,
    TResult Function(IncompleteFormState value)? incomplete,
    TResult Function(CompletedFormState value)? completed,
    TResult Function(SubmittedFormState value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFormStateCopyWith<$Res> {
  factory $UserFormStateCopyWith(
          UserFormState value, $Res Function(UserFormState) then) =
      _$UserFormStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserFormStateCopyWithImpl<$Res>
    implements $UserFormStateCopyWith<$Res> {
  _$UserFormStateCopyWithImpl(this._value, this._then);

  final UserFormState _value;
  // ignore: unused_field
  final $Res Function(UserFormState) _then;
}

/// @nodoc
abstract class $EmptyFormStateCopyWith<$Res> {
  factory $EmptyFormStateCopyWith(
          EmptyFormState value, $Res Function(EmptyFormState) then) =
      _$EmptyFormStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyFormStateCopyWithImpl<$Res>
    extends _$UserFormStateCopyWithImpl<$Res>
    implements $EmptyFormStateCopyWith<$Res> {
  _$EmptyFormStateCopyWithImpl(
      EmptyFormState _value, $Res Function(EmptyFormState) _then)
      : super(_value, (v) => _then(v as EmptyFormState));

  @override
  EmptyFormState get _value => super._value as EmptyFormState;
}

/// @nodoc

class _$EmptyFormState extends EmptyFormState {
  const _$EmptyFormState() : super._();

  @override
  String toString() {
    return 'UserFormState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyFormState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() incomplete,
    required TResult Function() completed,
    required TResult Function() submitted,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? incomplete,
    TResult Function()? completed,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyFormState value) empty,
    required TResult Function(IncompleteFormState value) incomplete,
    required TResult Function(CompletedFormState value) completed,
    required TResult Function(SubmittedFormState value) submitted,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFormState value)? empty,
    TResult Function(IncompleteFormState value)? incomplete,
    TResult Function(CompletedFormState value)? completed,
    TResult Function(SubmittedFormState value)? submitted,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyFormState extends UserFormState {
  const factory EmptyFormState() = _$EmptyFormState;
  const EmptyFormState._() : super._();
}

/// @nodoc
abstract class $IncompleteFormStateCopyWith<$Res> {
  factory $IncompleteFormStateCopyWith(
          IncompleteFormState value, $Res Function(IncompleteFormState) then) =
      _$IncompleteFormStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$IncompleteFormStateCopyWithImpl<$Res>
    extends _$UserFormStateCopyWithImpl<$Res>
    implements $IncompleteFormStateCopyWith<$Res> {
  _$IncompleteFormStateCopyWithImpl(
      IncompleteFormState _value, $Res Function(IncompleteFormState) _then)
      : super(_value, (v) => _then(v as IncompleteFormState));

  @override
  IncompleteFormState get _value => super._value as IncompleteFormState;
}

/// @nodoc

class _$IncompleteFormState extends IncompleteFormState {
  const _$IncompleteFormState() : super._();

  @override
  String toString() {
    return 'UserFormState.incomplete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IncompleteFormState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() incomplete,
    required TResult Function() completed,
    required TResult Function() submitted,
  }) {
    return incomplete();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? incomplete,
    TResult Function()? completed,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (incomplete != null) {
      return incomplete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyFormState value) empty,
    required TResult Function(IncompleteFormState value) incomplete,
    required TResult Function(CompletedFormState value) completed,
    required TResult Function(SubmittedFormState value) submitted,
  }) {
    return incomplete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFormState value)? empty,
    TResult Function(IncompleteFormState value)? incomplete,
    TResult Function(CompletedFormState value)? completed,
    TResult Function(SubmittedFormState value)? submitted,
    required TResult orElse(),
  }) {
    if (incomplete != null) {
      return incomplete(this);
    }
    return orElse();
  }
}

abstract class IncompleteFormState extends UserFormState {
  const factory IncompleteFormState() = _$IncompleteFormState;
  const IncompleteFormState._() : super._();
}

/// @nodoc
abstract class $CompletedFormStateCopyWith<$Res> {
  factory $CompletedFormStateCopyWith(
          CompletedFormState value, $Res Function(CompletedFormState) then) =
      _$CompletedFormStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CompletedFormStateCopyWithImpl<$Res>
    extends _$UserFormStateCopyWithImpl<$Res>
    implements $CompletedFormStateCopyWith<$Res> {
  _$CompletedFormStateCopyWithImpl(
      CompletedFormState _value, $Res Function(CompletedFormState) _then)
      : super(_value, (v) => _then(v as CompletedFormState));

  @override
  CompletedFormState get _value => super._value as CompletedFormState;
}

/// @nodoc

class _$CompletedFormState extends CompletedFormState {
  const _$CompletedFormState() : super._();

  @override
  String toString() {
    return 'UserFormState.completed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CompletedFormState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() incomplete,
    required TResult Function() completed,
    required TResult Function() submitted,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? incomplete,
    TResult Function()? completed,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyFormState value) empty,
    required TResult Function(IncompleteFormState value) incomplete,
    required TResult Function(CompletedFormState value) completed,
    required TResult Function(SubmittedFormState value) submitted,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFormState value)? empty,
    TResult Function(IncompleteFormState value)? incomplete,
    TResult Function(CompletedFormState value)? completed,
    TResult Function(SubmittedFormState value)? submitted,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class CompletedFormState extends UserFormState {
  const factory CompletedFormState() = _$CompletedFormState;
  const CompletedFormState._() : super._();
}

/// @nodoc
abstract class $SubmittedFormStateCopyWith<$Res> {
  factory $SubmittedFormStateCopyWith(
          SubmittedFormState value, $Res Function(SubmittedFormState) then) =
      _$SubmittedFormStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmittedFormStateCopyWithImpl<$Res>
    extends _$UserFormStateCopyWithImpl<$Res>
    implements $SubmittedFormStateCopyWith<$Res> {
  _$SubmittedFormStateCopyWithImpl(
      SubmittedFormState _value, $Res Function(SubmittedFormState) _then)
      : super(_value, (v) => _then(v as SubmittedFormState));

  @override
  SubmittedFormState get _value => super._value as SubmittedFormState;
}

/// @nodoc

class _$SubmittedFormState extends SubmittedFormState {
  const _$SubmittedFormState() : super._();

  @override
  String toString() {
    return 'UserFormState.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SubmittedFormState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() incomplete,
    required TResult Function() completed,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? incomplete,
    TResult Function()? completed,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyFormState value) empty,
    required TResult Function(IncompleteFormState value) incomplete,
    required TResult Function(CompletedFormState value) completed,
    required TResult Function(SubmittedFormState value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFormState value)? empty,
    TResult Function(IncompleteFormState value)? incomplete,
    TResult Function(CompletedFormState value)? completed,
    TResult Function(SubmittedFormState value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class SubmittedFormState extends UserFormState {
  const factory SubmittedFormState() = _$SubmittedFormState;
  const SubmittedFormState._() : super._();
}

/// @nodoc
class _$UserDataTearOff {
  const _$UserDataTearOff();

  _UserData call({String? firstName, String? lastName, String? email}) {
    return _UserData(
      firstName: firstName,
      lastName: lastName,
      email: email,
    );
  }
}

/// @nodoc
const $UserData = _$UserDataTearOff();

/// @nodoc
mixin _$UserData {
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call({String? firstName, String? lastName, String? email});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res> implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  final UserData _value;
  // ignore: unused_field
  final $Res Function(UserData) _then;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) then) =
      __$UserDataCopyWithImpl<$Res>;
  @override
  $Res call({String? firstName, String? lastName, String? email});
}

/// @nodoc
class __$UserDataCopyWithImpl<$Res> extends _$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(_UserData _value, $Res Function(_UserData) _then)
      : super(_value, (v) => _then(v as _UserData));

  @override
  _UserData get _value => super._value as _UserData;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
  }) {
    return _then(_UserData(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UserData extends _UserData {
  const _$_UserData({this.firstName, this.lastName, this.email}) : super._();

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;

  @override
  String toString() {
    return 'UserData(firstName: $firstName, lastName: $lastName, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserData &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$UserDataCopyWith<_UserData> get copyWith =>
      __$UserDataCopyWithImpl<_UserData>(this, _$identity);
}

abstract class _UserData extends UserData {
  const factory _UserData(
      {String? firstName, String? lastName, String? email}) = _$_UserData;
  const _UserData._() : super._();

  @override
  String? get firstName => throw _privateConstructorUsedError;
  @override
  String? get lastName => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDataCopyWith<_UserData> get copyWith =>
      throw _privateConstructorUsedError;
}
