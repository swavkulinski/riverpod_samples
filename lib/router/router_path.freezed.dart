// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'router_path.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RouterPath {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function() selection,
    required TResult Function(Connection connection) details,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? home,
    TResult? Function()? selection,
    TResult? Function(Connection connection)? details,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? selection,
    TResult Function(Connection connection)? details,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePath value) home,
    required TResult Function(SelectionPath value) selection,
    required TResult Function(ConnectionPath value) details,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePath value)? home,
    TResult? Function(SelectionPath value)? selection,
    TResult? Function(ConnectionPath value)? details,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePath value)? home,
    TResult Function(SelectionPath value)? selection,
    TResult Function(ConnectionPath value)? details,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouterPathCopyWith<$Res> {
  factory $RouterPathCopyWith(
          RouterPath value, $Res Function(RouterPath) then) =
      _$RouterPathCopyWithImpl<$Res, RouterPath>;
}

/// @nodoc
class _$RouterPathCopyWithImpl<$Res, $Val extends RouterPath>
    implements $RouterPathCopyWith<$Res> {
  _$RouterPathCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomePathCopyWith<$Res> {
  factory _$$HomePathCopyWith(
          _$HomePath value, $Res Function(_$HomePath) then) =
      __$$HomePathCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomePathCopyWithImpl<$Res>
    extends _$RouterPathCopyWithImpl<$Res, _$HomePath>
    implements _$$HomePathCopyWith<$Res> {
  __$$HomePathCopyWithImpl(_$HomePath _value, $Res Function(_$HomePath) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomePath implements HomePath {
  _$HomePath();

  @override
  String toString() {
    return 'RouterPath.home()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomePath);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function() selection,
    required TResult Function(Connection connection) details,
  }) {
    return home();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? home,
    TResult? Function()? selection,
    TResult? Function(Connection connection)? details,
  }) {
    return home?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? selection,
    TResult Function(Connection connection)? details,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePath value) home,
    required TResult Function(SelectionPath value) selection,
    required TResult Function(ConnectionPath value) details,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePath value)? home,
    TResult? Function(SelectionPath value)? selection,
    TResult? Function(ConnectionPath value)? details,
  }) {
    return home?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePath value)? home,
    TResult Function(SelectionPath value)? selection,
    TResult Function(ConnectionPath value)? details,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class HomePath implements RouterPath {
  factory HomePath() = _$HomePath;
}

/// @nodoc
abstract class _$$SelectionPathCopyWith<$Res> {
  factory _$$SelectionPathCopyWith(
          _$SelectionPath value, $Res Function(_$SelectionPath) then) =
      __$$SelectionPathCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectionPathCopyWithImpl<$Res>
    extends _$RouterPathCopyWithImpl<$Res, _$SelectionPath>
    implements _$$SelectionPathCopyWith<$Res> {
  __$$SelectionPathCopyWithImpl(
      _$SelectionPath _value, $Res Function(_$SelectionPath) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SelectionPath implements SelectionPath {
  _$SelectionPath();

  @override
  String toString() {
    return 'RouterPath.selection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SelectionPath);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function() selection,
    required TResult Function(Connection connection) details,
  }) {
    return selection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? home,
    TResult? Function()? selection,
    TResult? Function(Connection connection)? details,
  }) {
    return selection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? selection,
    TResult Function(Connection connection)? details,
    required TResult orElse(),
  }) {
    if (selection != null) {
      return selection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePath value) home,
    required TResult Function(SelectionPath value) selection,
    required TResult Function(ConnectionPath value) details,
  }) {
    return selection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePath value)? home,
    TResult? Function(SelectionPath value)? selection,
    TResult? Function(ConnectionPath value)? details,
  }) {
    return selection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePath value)? home,
    TResult Function(SelectionPath value)? selection,
    TResult Function(ConnectionPath value)? details,
    required TResult orElse(),
  }) {
    if (selection != null) {
      return selection(this);
    }
    return orElse();
  }
}

abstract class SelectionPath implements RouterPath {
  factory SelectionPath() = _$SelectionPath;
}

/// @nodoc
abstract class _$$ConnectionPathCopyWith<$Res> {
  factory _$$ConnectionPathCopyWith(
          _$ConnectionPath value, $Res Function(_$ConnectionPath) then) =
      __$$ConnectionPathCopyWithImpl<$Res>;
  @useResult
  $Res call({Connection connection});
}

/// @nodoc
class __$$ConnectionPathCopyWithImpl<$Res>
    extends _$RouterPathCopyWithImpl<$Res, _$ConnectionPath>
    implements _$$ConnectionPathCopyWith<$Res> {
  __$$ConnectionPathCopyWithImpl(
      _$ConnectionPath _value, $Res Function(_$ConnectionPath) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connection = null,
  }) {
    return _then(_$ConnectionPath(
      null == connection
          ? _value.connection
          : connection // ignore: cast_nullable_to_non_nullable
              as Connection,
    ));
  }
}

/// @nodoc

class _$ConnectionPath implements ConnectionPath {
  _$ConnectionPath(this.connection);

  @override
  final Connection connection;

  @override
  String toString() {
    return 'RouterPath.details(connection: $connection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionPath &&
            (identical(other.connection, connection) ||
                other.connection == connection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionPathCopyWith<_$ConnectionPath> get copyWith =>
      __$$ConnectionPathCopyWithImpl<_$ConnectionPath>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function() selection,
    required TResult Function(Connection connection) details,
  }) {
    return details(connection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? home,
    TResult? Function()? selection,
    TResult? Function(Connection connection)? details,
  }) {
    return details?.call(connection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? selection,
    TResult Function(Connection connection)? details,
    required TResult orElse(),
  }) {
    if (details != null) {
      return details(connection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePath value) home,
    required TResult Function(SelectionPath value) selection,
    required TResult Function(ConnectionPath value) details,
  }) {
    return details(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePath value)? home,
    TResult? Function(SelectionPath value)? selection,
    TResult? Function(ConnectionPath value)? details,
  }) {
    return details?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePath value)? home,
    TResult Function(SelectionPath value)? selection,
    TResult Function(ConnectionPath value)? details,
    required TResult orElse(),
  }) {
    if (details != null) {
      return details(this);
    }
    return orElse();
  }
}

abstract class ConnectionPath implements RouterPath {
  factory ConnectionPath(final Connection connection) = _$ConnectionPath;

  Connection get connection;
  @JsonKey(ignore: true)
  _$$ConnectionPathCopyWith<_$ConnectionPath> get copyWith =>
      throw _privateConstructorUsedError;
}
