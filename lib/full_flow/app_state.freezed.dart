// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({Response response});

  $ResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseCopyWith<$Res> get response {
    return $ResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_AppStateCopyWith(
          _$_AppState value, $Res Function(_$_AppState) then) =
      __$$_AppStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Response response});

  @override
  $ResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$_AppStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_AppState>
    implements _$$_AppStateCopyWith<$Res> {
  __$$_AppStateCopyWithImpl(
      _$_AppState _value, $Res Function(_$_AppState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$_AppState(
      response: null == response
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
        (other.runtimeType == runtimeType &&
            other is _$_AppState &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      __$$_AppStateCopyWithImpl<_$_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  factory _AppState({required final Response response}) = _$_AppState;

  @override
  Response get response;
  @override
  @JsonKey(ignore: true)
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? undefined,
    TResult? Function()? unauthorised,
    TResult? Function()? badRequest,
    TResult? Function(String value)? appState,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Undefined value)? undefined,
    TResult? Function(Unauthorized value)? unauthorised,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(AppStateResponse value)? appState,
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
      _$ResponseCopyWithImpl<$Res, Response>;
}

/// @nodoc
class _$ResponseCopyWithImpl<$Res, $Val extends Response>
    implements $ResponseCopyWith<$Res> {
  _$ResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UndefinedCopyWith<$Res> {
  factory _$$UndefinedCopyWith(
          _$Undefined value, $Res Function(_$Undefined) then) =
      __$$UndefinedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UndefinedCopyWithImpl<$Res>
    extends _$ResponseCopyWithImpl<$Res, _$Undefined>
    implements _$$UndefinedCopyWith<$Res> {
  __$$UndefinedCopyWithImpl(
      _$Undefined _value, $Res Function(_$Undefined) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Undefined);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? undefined,
    TResult? Function()? unauthorised,
    TResult? Function()? badRequest,
    TResult? Function(String value)? appState,
  }) {
    return undefined?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Undefined value)? undefined,
    TResult? Function(Unauthorized value)? unauthorised,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(AppStateResponse value)? appState,
  }) {
    return undefined?.call(this);
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
abstract class _$$UnauthorizedCopyWith<$Res> {
  factory _$$UnauthorizedCopyWith(
          _$Unauthorized value, $Res Function(_$Unauthorized) then) =
      __$$UnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthorizedCopyWithImpl<$Res>
    extends _$ResponseCopyWithImpl<$Res, _$Unauthorized>
    implements _$$UnauthorizedCopyWith<$Res> {
  __$$UnauthorizedCopyWithImpl(
      _$Unauthorized _value, $Res Function(_$Unauthorized) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Unauthorized);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? undefined,
    TResult? Function()? unauthorised,
    TResult? Function()? badRequest,
    TResult? Function(String value)? appState,
  }) {
    return unauthorised?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Undefined value)? undefined,
    TResult? Function(Unauthorized value)? unauthorised,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(AppStateResponse value)? appState,
  }) {
    return unauthorised?.call(this);
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
abstract class _$$BadRequestCopyWith<$Res> {
  factory _$$BadRequestCopyWith(
          _$BadRequest value, $Res Function(_$BadRequest) then) =
      __$$BadRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BadRequestCopyWithImpl<$Res>
    extends _$ResponseCopyWithImpl<$Res, _$BadRequest>
    implements _$$BadRequestCopyWith<$Res> {
  __$$BadRequestCopyWithImpl(
      _$BadRequest _value, $Res Function(_$BadRequest) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BadRequest);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? undefined,
    TResult? Function()? unauthorised,
    TResult? Function()? badRequest,
    TResult? Function(String value)? appState,
  }) {
    return badRequest?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Undefined value)? undefined,
    TResult? Function(Unauthorized value)? unauthorised,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(AppStateResponse value)? appState,
  }) {
    return badRequest?.call(this);
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
abstract class _$$AppStateResponseCopyWith<$Res> {
  factory _$$AppStateResponseCopyWith(
          _$AppStateResponse value, $Res Function(_$AppStateResponse) then) =
      __$$AppStateResponseCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$AppStateResponseCopyWithImpl<$Res>
    extends _$ResponseCopyWithImpl<$Res, _$AppStateResponse>
    implements _$$AppStateResponseCopyWith<$Res> {
  __$$AppStateResponseCopyWithImpl(
      _$AppStateResponse _value, $Res Function(_$AppStateResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$AppStateResponse(
      null == value
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
        (other.runtimeType == runtimeType &&
            other is _$AppStateResponse &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateResponseCopyWith<_$AppStateResponse> get copyWith =>
      __$$AppStateResponseCopyWithImpl<_$AppStateResponse>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? undefined,
    TResult? Function()? unauthorised,
    TResult? Function()? badRequest,
    TResult? Function(String value)? appState,
  }) {
    return appState?.call(value);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Undefined value)? undefined,
    TResult? Function(Unauthorized value)? unauthorised,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(AppStateResponse value)? appState,
  }) {
    return appState?.call(this);
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
  const factory AppStateResponse(final String value) = _$AppStateResponse;

  String get value;
  @JsonKey(ignore: true)
  _$$AppStateResponseCopyWith<_$AppStateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
