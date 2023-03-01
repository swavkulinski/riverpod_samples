// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppState call({required Response response}) {
    return _AppState(
      response: response,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  Response get response => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call({Response response});

  $ResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response,
    ));
  }

  @override
  $ResponseCopyWith<$Res> get response {
    return $ResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call({Response response});

  @override
  $ResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_AppState(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response,
    ));
  }
}

/// @nodoc

class _$_AppState implements _AppState {
  _$_AppState({required this.response});

  @override
  final Response response;

  @override
  String toString() {
    return 'AppState(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppState &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  factory _AppState({required Response response}) = _$_AppState;

  @override
  Response get response => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppStateCopyWith<_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ResponseTearOff {
  const _$ResponseTearOff();

  Undefined undefined() {
    return const Undefined();
  }

  Unauthorized unauthorised() {
    return const Unauthorized();
  }

  BadRequest badRequest() {
    return const BadRequest();
  }

  AppStateResponse appState(String value) {
    return AppStateResponse(
      value,
    );
  }
}

/// @nodoc
const $Response = _$ResponseTearOff();

/// @nodoc
mixin _$Response {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undefined,
    required TResult Function() unauthorised,
    required TResult Function() badRequest,
    required TResult Function(String value) appState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undefined,
    TResult Function()? unauthorised,
    TResult Function()? badRequest,
    TResult Function(String value)? appState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undefined value) undefined,
    required TResult Function(Unauthorized value) unauthorised,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(AppStateResponse value) appState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undefined value)? undefined,
    TResult Function(Unauthorized value)? unauthorised,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(AppStateResponse value)? appState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCopyWith<$Res> {
  factory $ResponseCopyWith(Response value, $Res Function(Response) then) =
      _$ResponseCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResponseCopyWithImpl<$Res> implements $ResponseCopyWith<$Res> {
  _$ResponseCopyWithImpl(this._value, this._then);

  final Response _value;
  // ignore: unused_field
  final $Res Function(Response) _then;
}

/// @nodoc
abstract class $UndefinedCopyWith<$Res> {
  factory $UndefinedCopyWith(Undefined value, $Res Function(Undefined) then) =
      _$UndefinedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UndefinedCopyWithImpl<$Res> extends _$ResponseCopyWithImpl<$Res>
    implements $UndefinedCopyWith<$Res> {
  _$UndefinedCopyWithImpl(Undefined _value, $Res Function(Undefined) _then)
      : super(_value, (v) => _then(v as Undefined));

  @override
  Undefined get _value => super._value as Undefined;
}

/// @nodoc

class _$Undefined implements Undefined {
  const _$Undefined();

  @override
  String toString() {
    return 'Response.undefined()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Undefined);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undefined,
    required TResult Function() unauthorised,
    required TResult Function() badRequest,
    required TResult Function(String value) appState,
  }) {
    return undefined();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undefined,
    TResult Function()? unauthorised,
    TResult Function()? badRequest,
    TResult Function(String value)? appState,
    required TResult orElse(),
  }) {
    if (undefined != null) {
      return undefined();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undefined value) undefined,
    required TResult Function(Unauthorized value) unauthorised,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(AppStateResponse value) appState,
  }) {
    return undefined(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undefined value)? undefined,
    TResult Function(Unauthorized value)? unauthorised,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(AppStateResponse value)? appState,
    required TResult orElse(),
  }) {
    if (undefined != null) {
      return undefined(this);
    }
    return orElse();
  }
}

abstract class Undefined implements Response {
  const factory Undefined() = _$Undefined;
}

/// @nodoc
abstract class $UnauthorizedCopyWith<$Res> {
  factory $UnauthorizedCopyWith(
          Unauthorized value, $Res Function(Unauthorized) then) =
      _$UnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnauthorizedCopyWithImpl<$Res> extends _$ResponseCopyWithImpl<$Res>
    implements $UnauthorizedCopyWith<$Res> {
  _$UnauthorizedCopyWithImpl(
      Unauthorized _value, $Res Function(Unauthorized) _then)
      : super(_value, (v) => _then(v as Unauthorized));

  @override
  Unauthorized get _value => super._value as Unauthorized;
}

/// @nodoc

class _$Unauthorized implements Unauthorized {
  const _$Unauthorized();

  @override
  String toString() {
    return 'Response.unauthorised()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undefined,
    required TResult Function() unauthorised,
    required TResult Function() badRequest,
    required TResult Function(String value) appState,
  }) {
    return unauthorised();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undefined,
    TResult Function()? unauthorised,
    TResult Function()? badRequest,
    TResult Function(String value)? appState,
    required TResult orElse(),
  }) {
    if (unauthorised != null) {
      return unauthorised();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undefined value) undefined,
    required TResult Function(Unauthorized value) unauthorised,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(AppStateResponse value) appState,
  }) {
    return unauthorised(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undefined value)? undefined,
    TResult Function(Unauthorized value)? unauthorised,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(AppStateResponse value)? appState,
    required TResult orElse(),
  }) {
    if (unauthorised != null) {
      return unauthorised(this);
    }
    return orElse();
  }
}

abstract class Unauthorized implements Response {
  const factory Unauthorized() = _$Unauthorized;
}

/// @nodoc
abstract class $BadRequestCopyWith<$Res> {
  factory $BadRequestCopyWith(
          BadRequest value, $Res Function(BadRequest) then) =
      _$BadRequestCopyWithImpl<$Res>;
}

/// @nodoc
class _$BadRequestCopyWithImpl<$Res> extends _$ResponseCopyWithImpl<$Res>
    implements $BadRequestCopyWith<$Res> {
  _$BadRequestCopyWithImpl(BadRequest _value, $Res Function(BadRequest) _then)
      : super(_value, (v) => _then(v as BadRequest));

  @override
  BadRequest get _value => super._value as BadRequest;
}

/// @nodoc

class _$BadRequest implements BadRequest {
  const _$BadRequest();

  @override
  String toString() {
    return 'Response.badRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BadRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undefined,
    required TResult Function() unauthorised,
    required TResult Function() badRequest,
    required TResult Function(String value) appState,
  }) {
    return badRequest();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undefined,
    TResult Function()? unauthorised,
    TResult Function()? badRequest,
    TResult Function(String value)? appState,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undefined value) undefined,
    required TResult Function(Unauthorized value) unauthorised,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(AppStateResponse value) appState,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undefined value)? undefined,
    TResult Function(Unauthorized value)? unauthorised,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(AppStateResponse value)? appState,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequest implements Response {
  const factory BadRequest() = _$BadRequest;
}

/// @nodoc
abstract class $AppStateResponseCopyWith<$Res> {
  factory $AppStateResponseCopyWith(
          AppStateResponse value, $Res Function(AppStateResponse) then) =
      _$AppStateResponseCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$AppStateResponseCopyWithImpl<$Res> extends _$ResponseCopyWithImpl<$Res>
    implements $AppStateResponseCopyWith<$Res> {
  _$AppStateResponseCopyWithImpl(
      AppStateResponse _value, $Res Function(AppStateResponse) _then)
      : super(_value, (v) => _then(v as AppStateResponse));

  @override
  AppStateResponse get _value => super._value as AppStateResponse;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(AppStateResponse(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppStateResponse implements AppStateResponse {
  const _$AppStateResponse(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'Response.appState(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppStateResponse &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $AppStateResponseCopyWith<AppStateResponse> get copyWith =>
      _$AppStateResponseCopyWithImpl<AppStateResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undefined,
    required TResult Function() unauthorised,
    required TResult Function() badRequest,
    required TResult Function(String value) appState,
  }) {
    return appState(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undefined,
    TResult Function()? unauthorised,
    TResult Function()? badRequest,
    TResult Function(String value)? appState,
    required TResult orElse(),
  }) {
    if (appState != null) {
      return appState(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undefined value) undefined,
    required TResult Function(Unauthorized value) unauthorised,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(AppStateResponse value) appState,
  }) {
    return appState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undefined value)? undefined,
    TResult Function(Unauthorized value)? unauthorised,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(AppStateResponse value)? appState,
    required TResult orElse(),
  }) {
    if (appState != null) {
      return appState(this);
    }
    return orElse();
  }
}

abstract class AppStateResponse implements Response {
  const factory AppStateResponse(String value) = _$AppStateResponse;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateResponseCopyWith<AppStateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
