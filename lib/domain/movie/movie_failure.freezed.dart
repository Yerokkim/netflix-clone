// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movie_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MoiveFailureTearOff {
  const _$MoiveFailureTearOff();

  UnexpectedMovieFailure unexpected() {
    return const UnexpectedMovieFailure();
  }
}

/// @nodoc
const $MoiveFailure = _$MoiveFailureTearOff();

/// @nodoc
mixin _$MoiveFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedMovieFailure value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedMovieFailure value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoiveFailureCopyWith<$Res> {
  factory $MoiveFailureCopyWith(
          MoiveFailure value, $Res Function(MoiveFailure) then) =
      _$MoiveFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoiveFailureCopyWithImpl<$Res> implements $MoiveFailureCopyWith<$Res> {
  _$MoiveFailureCopyWithImpl(this._value, this._then);

  final MoiveFailure _value;
  // ignore: unused_field
  final $Res Function(MoiveFailure) _then;
}

/// @nodoc
abstract class $UnexpectedMovieFailureCopyWith<$Res> {
  factory $UnexpectedMovieFailureCopyWith(UnexpectedMovieFailure value,
          $Res Function(UnexpectedMovieFailure) then) =
      _$UnexpectedMovieFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnexpectedMovieFailureCopyWithImpl<$Res>
    extends _$MoiveFailureCopyWithImpl<$Res>
    implements $UnexpectedMovieFailureCopyWith<$Res> {
  _$UnexpectedMovieFailureCopyWithImpl(UnexpectedMovieFailure _value,
      $Res Function(UnexpectedMovieFailure) _then)
      : super(_value, (v) => _then(v as UnexpectedMovieFailure));

  @override
  UnexpectedMovieFailure get _value => super._value as UnexpectedMovieFailure;
}

/// @nodoc

class _$UnexpectedMovieFailure implements UnexpectedMovieFailure {
  const _$UnexpectedMovieFailure();

  @override
  String toString() {
    return 'MoiveFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnexpectedMovieFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedMovieFailure value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedMovieFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class UnexpectedMovieFailure implements MoiveFailure {
  const factory UnexpectedMovieFailure() = _$UnexpectedMovieFailure;
}
