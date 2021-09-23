part of 'auth_state_notifier.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.unauthenticated() = UnauthenticatedState;

  const factory AuthState.authenticated(IAuthResult? authResult) = AuthenticatedState;

  const factory AuthState.loading() = AuthLoadingState;

  const factory AuthState.authFailure() = AuthFailureState;
}
