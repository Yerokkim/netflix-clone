// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  SignInAuthFailure signIn(String message) {
    return SignInAuthFailure(
      message,
    );
  }

  SignOutAuthFailure signOut(String mesage) {
    return SignOutAuthFailure(
      mesage,
    );
  }

  RegisterAuthFailure register(String message) {
    return RegisterAuthFailure(
      message,
    );
  }

  UnexpectedAuthFailure unexpected(String message) {
    return UnexpectedAuthFailure(
      message,
    );
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) signIn,
    required TResult Function(String mesage) signOut,
    required TResult Function(String message) register,
    required TResult Function(String message) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? signIn,
    TResult Function(String mesage)? signOut,
    TResult Function(String message)? register,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInAuthFailure value) signIn,
    required TResult Function(SignOutAuthFailure value) signOut,
    required TResult Function(RegisterAuthFailure value) register,
    required TResult Function(UnexpectedAuthFailure value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInAuthFailure value)? signIn,
    TResult Function(SignOutAuthFailure value)? signOut,
    TResult Function(RegisterAuthFailure value)? register,
    TResult Function(UnexpectedAuthFailure value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $SignInAuthFailureCopyWith<$Res> {
  factory $SignInAuthFailureCopyWith(
          SignInAuthFailure value, $Res Function(SignInAuthFailure) then) =
      _$SignInAuthFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$SignInAuthFailureCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $SignInAuthFailureCopyWith<$Res> {
  _$SignInAuthFailureCopyWithImpl(
      SignInAuthFailure _value, $Res Function(SignInAuthFailure) _then)
      : super(_value, (v) => _then(v as SignInAuthFailure));

  @override
  SignInAuthFailure get _value => super._value as SignInAuthFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(SignInAuthFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInAuthFailure implements SignInAuthFailure {
  const _$SignInAuthFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthFailure.signIn(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInAuthFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $SignInAuthFailureCopyWith<SignInAuthFailure> get copyWith =>
      _$SignInAuthFailureCopyWithImpl<SignInAuthFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) signIn,
    required TResult Function(String mesage) signOut,
    required TResult Function(String message) register,
    required TResult Function(String message) unexpected,
  }) {
    return signIn(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? signIn,
    TResult Function(String mesage)? signOut,
    TResult Function(String message)? register,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInAuthFailure value) signIn,
    required TResult Function(SignOutAuthFailure value) signOut,
    required TResult Function(RegisterAuthFailure value) register,
    required TResult Function(UnexpectedAuthFailure value) unexpected,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInAuthFailure value)? signIn,
    TResult Function(SignOutAuthFailure value)? signOut,
    TResult Function(RegisterAuthFailure value)? register,
    TResult Function(UnexpectedAuthFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignInAuthFailure implements AuthFailure {
  const factory SignInAuthFailure(String message) = _$SignInAuthFailure;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInAuthFailureCopyWith<SignInAuthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignOutAuthFailureCopyWith<$Res> {
  factory $SignOutAuthFailureCopyWith(
          SignOutAuthFailure value, $Res Function(SignOutAuthFailure) then) =
      _$SignOutAuthFailureCopyWithImpl<$Res>;
  $Res call({String mesage});
}

/// @nodoc
class _$SignOutAuthFailureCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $SignOutAuthFailureCopyWith<$Res> {
  _$SignOutAuthFailureCopyWithImpl(
      SignOutAuthFailure _value, $Res Function(SignOutAuthFailure) _then)
      : super(_value, (v) => _then(v as SignOutAuthFailure));

  @override
  SignOutAuthFailure get _value => super._value as SignOutAuthFailure;

  @override
  $Res call({
    Object? mesage = freezed,
  }) {
    return _then(SignOutAuthFailure(
      mesage == freezed
          ? _value.mesage
          : mesage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignOutAuthFailure implements SignOutAuthFailure {
  const _$SignOutAuthFailure(this.mesage);

  @override
  final String mesage;

  @override
  String toString() {
    return 'AuthFailure.signOut(mesage: $mesage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignOutAuthFailure &&
            (identical(other.mesage, mesage) ||
                const DeepCollectionEquality().equals(other.mesage, mesage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mesage);

  @JsonKey(ignore: true)
  @override
  $SignOutAuthFailureCopyWith<SignOutAuthFailure> get copyWith =>
      _$SignOutAuthFailureCopyWithImpl<SignOutAuthFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) signIn,
    required TResult Function(String mesage) signOut,
    required TResult Function(String message) register,
    required TResult Function(String message) unexpected,
  }) {
    return signOut(mesage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? signIn,
    TResult Function(String mesage)? signOut,
    TResult Function(String message)? register,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(mesage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInAuthFailure value) signIn,
    required TResult Function(SignOutAuthFailure value) signOut,
    required TResult Function(RegisterAuthFailure value) register,
    required TResult Function(UnexpectedAuthFailure value) unexpected,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInAuthFailure value)? signIn,
    TResult Function(SignOutAuthFailure value)? signOut,
    TResult Function(RegisterAuthFailure value)? register,
    TResult Function(UnexpectedAuthFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOutAuthFailure implements AuthFailure {
  const factory SignOutAuthFailure(String mesage) = _$SignOutAuthFailure;

  String get mesage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignOutAuthFailureCopyWith<SignOutAuthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterAuthFailureCopyWith<$Res> {
  factory $RegisterAuthFailureCopyWith(
          RegisterAuthFailure value, $Res Function(RegisterAuthFailure) then) =
      _$RegisterAuthFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$RegisterAuthFailureCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $RegisterAuthFailureCopyWith<$Res> {
  _$RegisterAuthFailureCopyWithImpl(
      RegisterAuthFailure _value, $Res Function(RegisterAuthFailure) _then)
      : super(_value, (v) => _then(v as RegisterAuthFailure));

  @override
  RegisterAuthFailure get _value => super._value as RegisterAuthFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(RegisterAuthFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterAuthFailure implements RegisterAuthFailure {
  const _$RegisterAuthFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthFailure.register(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterAuthFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $RegisterAuthFailureCopyWith<RegisterAuthFailure> get copyWith =>
      _$RegisterAuthFailureCopyWithImpl<RegisterAuthFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) signIn,
    required TResult Function(String mesage) signOut,
    required TResult Function(String message) register,
    required TResult Function(String message) unexpected,
  }) {
    return register(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? signIn,
    TResult Function(String mesage)? signOut,
    TResult Function(String message)? register,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInAuthFailure value) signIn,
    required TResult Function(SignOutAuthFailure value) signOut,
    required TResult Function(RegisterAuthFailure value) register,
    required TResult Function(UnexpectedAuthFailure value) unexpected,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInAuthFailure value)? signIn,
    TResult Function(SignOutAuthFailure value)? signOut,
    TResult Function(RegisterAuthFailure value)? register,
    TResult Function(UnexpectedAuthFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class RegisterAuthFailure implements AuthFailure {
  const factory RegisterAuthFailure(String message) = _$RegisterAuthFailure;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterAuthFailureCopyWith<RegisterAuthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnexpectedAuthFailureCopyWith<$Res> {
  factory $UnexpectedAuthFailureCopyWith(UnexpectedAuthFailure value,
          $Res Function(UnexpectedAuthFailure) then) =
      _$UnexpectedAuthFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$UnexpectedAuthFailureCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $UnexpectedAuthFailureCopyWith<$Res> {
  _$UnexpectedAuthFailureCopyWithImpl(
      UnexpectedAuthFailure _value, $Res Function(UnexpectedAuthFailure) _then)
      : super(_value, (v) => _then(v as UnexpectedAuthFailure));

  @override
  UnexpectedAuthFailure get _value => super._value as UnexpectedAuthFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(UnexpectedAuthFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnexpectedAuthFailure implements UnexpectedAuthFailure {
  const _$UnexpectedAuthFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthFailure.unexpected(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnexpectedAuthFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $UnexpectedAuthFailureCopyWith<UnexpectedAuthFailure> get copyWith =>
      _$UnexpectedAuthFailureCopyWithImpl<UnexpectedAuthFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) signIn,
    required TResult Function(String mesage) signOut,
    required TResult Function(String message) register,
    required TResult Function(String message) unexpected,
  }) {
    return unexpected(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? signIn,
    TResult Function(String mesage)? signOut,
    TResult Function(String message)? register,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInAuthFailure value) signIn,
    required TResult Function(SignOutAuthFailure value) signOut,
    required TResult Function(RegisterAuthFailure value) register,
    required TResult Function(UnexpectedAuthFailure value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInAuthFailure value)? signIn,
    TResult Function(SignOutAuthFailure value)? signOut,
    TResult Function(RegisterAuthFailure value)? register,
    TResult Function(UnexpectedAuthFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class UnexpectedAuthFailure implements AuthFailure {
  const factory UnexpectedAuthFailure(String message) = _$UnexpectedAuthFailure;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnexpectedAuthFailureCopyWith<UnexpectedAuthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
