import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.signIn(String message) = SignInAuthFailure;

  const factory AuthFailure.signOut(String mesage) = SignOutAuthFailure;

  const factory AuthFailure.register(String message) = RegisterAuthFailure;

  const factory AuthFailure.unexpected(String message) = UnexpectedAuthFailure;
}
