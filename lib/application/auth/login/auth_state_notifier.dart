import 'dart:async';

import 'package:netflix_clone/domain/auth/email_address.dart';
import 'package:netflix_clone/domain/auth/i_auth_facade.dart';
import 'package:netflix_clone/domain/auth/password.dart';
import 'package:riverpod/riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_state_notifier.freezed.dart';

class AuthStateNotifier extends StateNotifier<AuthState> {
  final Reader _read;

  StreamSubscription<IAuthResult?>? _authStateChangeSubscription;

  AuthStateNotifier(this._read) : super(UnauthenticatedState()) {
    _authStateChangeSubscription?.cancel();

    _authStateChangeSubscription =
        _read(firebaseAuthRepositoryProvider).onAuthStateChanged.listen((user) => authUser(user));
  }

  @override
  void dispose() {
    _authStateChangeSubscription?.cancel();
    super.dispose();
  }

  Future<AuthState?> signInWithEmailAndPassword(
      {required EmailAddress email, required Password password}) async {
    state = UnauthenticatedState();
    try {
      await _read(firebaseAuthRepositoryProvider)
          .signWithEmailAndPassword(email: email, password: password);
      state = AuthLoadingState();
    } catch (e) {
      state = AuthFailureState();
    }
  }

  Future<AuthState?> authUser(IAuthResult? result) async {
    try {
      state = AuthLoadingState();

      if (result == null) {
        return state = UnauthenticatedState();
      }

      final currentUser = await _read(firebaseAuthRepositoryProvider).getCurrentUser();

      if (currentUser == null) {
        return state = UnauthenticatedState();
      } else {
        state = AuthenticatedState(result);
      }
    } catch (e) {
      state = AuthFailureState();
    }
  }
}
