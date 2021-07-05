// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'router.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConnectionPathTearOff {
  const _$ConnectionPathTearOff();

  HomePath home() {
    return const HomePath();
  }

  SelectionPath selection() {
    return const SelectionPath();
  }

  DetailsPath details() {
    return const DetailsPath();
  }
}

/// @nodoc
const $ConnectionPath = _$ConnectionPathTearOff();

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
      _$ConnectionPathCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectionPathCopyWithImpl<$Res>
    implements $ConnectionPathCopyWith<$Res> {
  _$ConnectionPathCopyWithImpl(this._value, this._then);

  final ConnectionPath _value;
  // ignore: unused_field
  final $Res Function(ConnectionPath) _then;
}

/// @nodoc
abstract class $HomePathCopyWith<$Res> {
  factory $HomePathCopyWith(HomePath value, $Res Function(HomePath) then) =
      _$HomePathCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomePathCopyWithImpl<$Res> extends _$ConnectionPathCopyWithImpl<$Res>
    implements $HomePathCopyWith<$Res> {
  _$HomePathCopyWithImpl(HomePath _value, $Res Function(HomePath) _then)
      : super(_value, (v) => _then(v as HomePath));

  @override
  HomePath get _value => super._value as HomePath;
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
    return identical(this, other) || (other is HomePath);
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
abstract class $SelectionPathCopyWith<$Res> {
  factory $SelectionPathCopyWith(
          SelectionPath value, $Res Function(SelectionPath) then) =
      _$SelectionPathCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectionPathCopyWithImpl<$Res>
    extends _$ConnectionPathCopyWithImpl<$Res>
    implements $SelectionPathCopyWith<$Res> {
  _$SelectionPathCopyWithImpl(
      SelectionPath _value, $Res Function(SelectionPath) _then)
      : super(_value, (v) => _then(v as SelectionPath));

  @override
  SelectionPath get _value => super._value as SelectionPath;
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
    return identical(this, other) || (other is SelectionPath);
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
abstract class $DetailsPathCopyWith<$Res> {
  factory $DetailsPathCopyWith(
          DetailsPath value, $Res Function(DetailsPath) then) =
      _$DetailsPathCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsPathCopyWithImpl<$Res> extends _$ConnectionPathCopyWithImpl<$Res>
    implements $DetailsPathCopyWith<$Res> {
  _$DetailsPathCopyWithImpl(
      DetailsPath _value, $Res Function(DetailsPath) _then)
      : super(_value, (v) => _then(v as DetailsPath));

  @override
  DetailsPath get _value => super._value as DetailsPath;
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
    return identical(this, other) || (other is DetailsPath);
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
