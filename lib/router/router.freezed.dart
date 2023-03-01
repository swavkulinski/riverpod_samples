// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'router.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectionPath {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function() selection,
    required TResult Function() details,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? home,
    TResult? Function()? selection,
    TResult? Function()? details,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? selection,
    TResult Function()? details,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePath value) home,
    required TResult Function(SelectionPath value) selection,
    required TResult Function(DetailsPath value) details,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePath value)? home,
    TResult? Function(SelectionPath value)? selection,
    TResult? Function(DetailsPath value)? details,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePath value)? home,
    TResult Function(SelectionPath value)? selection,
    TResult Function(DetailsPath value)? details,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionPathCopyWith<$Res> {
  factory $ConnectionPathCopyWith(
          ConnectionPath value, $Res Function(ConnectionPath) then) =
      _$ConnectionPathCopyWithImpl<$Res, ConnectionPath>;
}

/// @nodoc
class _$ConnectionPathCopyWithImpl<$Res, $Val extends ConnectionPath>
    implements $ConnectionPathCopyWith<$Res> {
  _$ConnectionPathCopyWithImpl(this._value, this._then);

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
    extends _$ConnectionPathCopyWithImpl<$Res, _$HomePath>
    implements _$$HomePathCopyWith<$Res> {
  __$$HomePathCopyWithImpl(_$HomePath _value, $Res Function(_$HomePath) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomePath implements HomePath {
  const _$HomePath();

  @override
  String toString() {
    return 'ConnectionPath.home()';
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
    required TResult Function() details,
  }) {
    return home();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? home,
    TResult? Function()? selection,
    TResult? Function()? details,
  }) {
    return home?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? selection,
    TResult Function()? details,
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
    required TResult Function(DetailsPath value) details,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePath value)? home,
    TResult? Function(SelectionPath value)? selection,
    TResult? Function(DetailsPath value)? details,
  }) {
    return home?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePath value)? home,
    TResult Function(SelectionPath value)? selection,
    TResult Function(DetailsPath value)? details,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class HomePath implements ConnectionPath {
  const factory HomePath() = _$HomePath;
}

/// @nodoc
abstract class _$$SelectionPathCopyWith<$Res> {
  factory _$$SelectionPathCopyWith(
          _$SelectionPath value, $Res Function(_$SelectionPath) then) =
      __$$SelectionPathCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectionPathCopyWithImpl<$Res>
    extends _$ConnectionPathCopyWithImpl<$Res, _$SelectionPath>
    implements _$$SelectionPathCopyWith<$Res> {
  __$$SelectionPathCopyWithImpl(
      _$SelectionPath _value, $Res Function(_$SelectionPath) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SelectionPath implements SelectionPath {
  const _$SelectionPath();

  @override
  String toString() {
    return 'ConnectionPath.selection()';
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
    required TResult Function() details,
  }) {
    return selection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? home,
    TResult? Function()? selection,
    TResult? Function()? details,
  }) {
    return selection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? selection,
    TResult Function()? details,
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
    required TResult Function(DetailsPath value) details,
  }) {
    return selection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePath value)? home,
    TResult? Function(SelectionPath value)? selection,
    TResult? Function(DetailsPath value)? details,
  }) {
    return selection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePath value)? home,
    TResult Function(SelectionPath value)? selection,
    TResult Function(DetailsPath value)? details,
    required TResult orElse(),
  }) {
    if (selection != null) {
      return selection(this);
    }
    return orElse();
  }
}

abstract class SelectionPath implements ConnectionPath {
  const factory SelectionPath() = _$SelectionPath;
}

/// @nodoc
abstract class _$$DetailsPathCopyWith<$Res> {
  factory _$$DetailsPathCopyWith(
          _$DetailsPath value, $Res Function(_$DetailsPath) then) =
      __$$DetailsPathCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DetailsPathCopyWithImpl<$Res>
    extends _$ConnectionPathCopyWithImpl<$Res, _$DetailsPath>
    implements _$$DetailsPathCopyWith<$Res> {
  __$$DetailsPathCopyWithImpl(
      _$DetailsPath _value, $Res Function(_$DetailsPath) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DetailsPath implements DetailsPath {
  const _$DetailsPath();

  @override
  String toString() {
    return 'ConnectionPath.details()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DetailsPath);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function() selection,
    required TResult Function() details,
  }) {
    return details();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? home,
    TResult? Function()? selection,
    TResult? Function()? details,
  }) {
    return details?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? selection,
    TResult Function()? details,
    required TResult orElse(),
  }) {
    if (details != null) {
      return details();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePath value) home,
    required TResult Function(SelectionPath value) selection,
    required TResult Function(DetailsPath value) details,
  }) {
    return details(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePath value)? home,
    TResult? Function(SelectionPath value)? selection,
    TResult? Function(DetailsPath value)? details,
  }) {
    return details?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePath value)? home,
    TResult Function(SelectionPath value)? selection,
    TResult Function(DetailsPath value)? details,
    required TResult orElse(),
  }) {
    if (details != null) {
      return details(this);
    }
    return orElse();
  }
}

abstract class DetailsPath implements ConnectionPath {
  const factory DetailsPath() = _$DetailsPath;
}
