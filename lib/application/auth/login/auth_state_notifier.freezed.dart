// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  UnauthenticatedState unauthenticated() {
    return const UnauthenticatedState();
  }

  AuthenticatedState authenticated(IAuthResult? authResult) {
    return AuthenticatedState(
      authResult,
    );
  }

  AuthLoadingState loading() {
    return const AuthLoadingState();
  }

  AuthFailureState authFailure() {
    return const AuthFailureState();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function(IAuthResult? authResult) authenticated,
    required TResult Function() loading,
    required TResult Function() authFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(IAuthResult? authResult)? authenticated,
    TResult Function()? loading,
    TResult Function()? authFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthenticatedState value) unauthenticated,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthFailureState value) authFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthenticatedState value)? unauthenticated,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthFailureState value)? authFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $UnauthenticatedStateCopyWith<$Res> {
  factory $UnauthenticatedStateCopyWith(UnauthenticatedState value,
          $Res Function(UnauthenticatedState) then) =
      _$UnauthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnauthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $UnauthenticatedStateCopyWith<$Res> {
  _$UnauthenticatedStateCopyWithImpl(
      UnauthenticatedState _value, $Res Function(UnauthenticatedState) _then)
      : super(_value, (v) => _then(v as UnauthenticatedState));

  @override
  UnauthenticatedState get _value => super._value as UnauthenticatedState;
}

/// @nodoc

class _$UnauthenticatedState implements UnauthenticatedState {
  const _$UnauthenticatedState();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnauthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function(IAuthResult? authResult) authenticated,
    required TResult Function() loading,
    required TResult Function() authFailure,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(IAuthResult? authResult)? authenticated,
    TResult Function()? loading,
    TResult Function()? authFailure,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthenticatedState value) unauthenticated,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthFailureState value) authFailure,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthenticatedState value)? unauthenticated,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthFailureState value)? authFailure,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class UnauthenticatedState implements AuthState {
  const factory UnauthenticatedState() = _$UnauthenticatedState;
}

/// @nodoc
abstract class $AuthenticatedStateCopyWith<$Res> {
  factory $AuthenticatedStateCopyWith(
          AuthenticatedState value, $Res Function(AuthenticatedState) then) =
      _$AuthenticatedStateCopyWithImpl<$Res>;
  $Res call({IAuthResult? authResult});
}

/// @nodoc
class _$AuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthenticatedStateCopyWith<$Res> {
  _$AuthenticatedStateCopyWithImpl(
      AuthenticatedState _value, $Res Function(AuthenticatedState) _then)
      : super(_value, (v) => _then(v as AuthenticatedState));

  @override
  AuthenticatedState get _value => super._value as AuthenticatedState;

  @override
  $Res call({
    Object? authResult = freezed,
  }) {
    return _then(AuthenticatedState(
      authResult == freezed
          ? _value.authResult
          : authResult // ignore: cast_nullable_to_non_nullable
              as IAuthResult?,
    ));
  }
}

/// @nodoc

class _$AuthenticatedState implements AuthenticatedState {
  const _$AuthenticatedState(this.authResult);

  @override
  final IAuthResult? authResult;

  @override
  String toString() {
    return 'AuthState.authenticated(authResult: $authResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthenticatedState &&
            (identical(other.authResult, authResult) ||
                const DeepCollectionEquality()
                    .equals(other.authResult, authResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(authResult);

  @JsonKey(ignore: true)
  @override
  $AuthenticatedStateCopyWith<AuthenticatedState> get copyWith =>
      _$AuthenticatedStateCopyWithImpl<AuthenticatedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function(IAuthResult? authResult) authenticated,
    required TResult Function() loading,
    required TResult Function() authFailure,
  }) {
    return authenticated(authResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(IAuthResult? authResult)? authenticated,
    TResult Function()? loading,
    TResult Function()? authFailure,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(authResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthenticatedState value) unauthenticated,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthFailureState value) authFailure,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthenticatedState value)? unauthenticated,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthFailureState value)? authFailure,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticatedState implements AuthState {
  const factory AuthenticatedState(IAuthResult? authResult) =
      _$AuthenticatedState;

  IAuthResult? get authResult => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticatedStateCopyWith<AuthenticatedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthLoadingStateCopyWith<$Res> {
  factory $AuthLoadingStateCopyWith(
          AuthLoadingState value, $Res Function(AuthLoadingState) then) =
      _$AuthLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthLoadingStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthLoadingStateCopyWith<$Res> {
  _$AuthLoadingStateCopyWithImpl(
      AuthLoadingState _value, $Res Function(AuthLoadingState) _then)
      : super(_value, (v) => _then(v as AuthLoadingState));

  @override
  AuthLoadingState get _value => super._value as AuthLoadingState;
}

/// @nodoc

class _$AuthLoadingState implements AuthLoadingState {
  const _$AuthLoadingState();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function(IAuthResult? authResult) authenticated,
    required TResult Function() loading,
    required TResult Function() authFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(IAuthResult? authResult)? authenticated,
    TResult Function()? loading,
    TResult Function()? authFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthenticatedState value) unauthenticated,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthFailureState value) authFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthenticatedState value)? unauthenticated,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthFailureState value)? authFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthLoadingState implements AuthState {
  const factory AuthLoadingState() = _$AuthLoadingState;
}

/// @nodoc
abstract class $AuthFailureStateCopyWith<$Res> {
  factory $AuthFailureStateCopyWith(
          AuthFailureState value, $Res Function(AuthFailureState) then) =
      _$AuthFailureStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthFailureStateCopyWith<$Res> {
  _$AuthFailureStateCopyWithImpl(
      AuthFailureState _value, $Res Function(AuthFailureState) _then)
      : super(_value, (v) => _then(v as AuthFailureState));

  @override
  AuthFailureState get _value => super._value as AuthFailureState;
}

/// @nodoc

class _$AuthFailureState implements AuthFailureState {
  const _$AuthFailureState();

  @override
  String toString() {
    return 'AuthState.authFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthFailureState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function(IAuthResult? authResult) authenticated,
    required TResult Function() loading,
    required TResult Function() authFailure,
  }) {
    return authFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(IAuthResult? authResult)? authenticated,
    TResult Function()? loading,
    TResult Function()? authFailure,
    required TResult orElse(),
  }) {
    if (authFailure != null) {
      return authFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthenticatedState value) unauthenticated,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthFailureState value) authFailure,
  }) {
    return authFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthenticatedState value)? unauthenticated,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthFailureState value)? authFailure,
    required TResult orElse(),
  }) {
    if (authFailure != null) {
      return authFailure(this);
    }
    return orElse();
  }
}

abstract class AuthFailureState implements AuthState {
  const factory AuthFailureState() = _$AuthFailureState;
}
