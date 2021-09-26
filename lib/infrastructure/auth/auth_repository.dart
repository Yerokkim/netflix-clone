import 'package:firebase_auth/firebase_auth.dart';
import 'package:netflix_clone/domain/auth/auth_failure.dart';
import 'package:netflix_clone/domain/auth/email_address.dart';
import 'package:netflix_clone/domain/auth/i_auth_facade.dart';
import 'package:netflix_clone/domain/auth/password.dart';
import 'package:netflix_clone/domain/user/i_user_repository.dart';
import 'package:netflix_clone/infrastructure/user/user_repository.dart';
import 'package:riverpod/riverpod.dart';

class AuthRepository extends IAuthFacade {
  final Reader _reader;

  AuthRepository(this._reader);

  static FirebaseAuth get _auth => FirebaseAuth.instance;
  @override
  IAuthUser get currentUser => throw UnimplementedError();

  @override
  Future<String> getCurrentUserId() async {
    final currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser == null) {
      throw Exception('Current user is null!');
    }

    return currentUser.uid;
  }

  Future<IAuthResult> _mapFirebaseUserToAuthResult(User? user) async {
    if (user == null) return FirebaseAuthResult(null);

    return FirebaseAuthResult(user);
  }

  @override
  bool get isSignedIn => throw UnimplementedError();

  @override
  Future<void> registerWithEmailAndPassword(
      {required EmailAddress email, required Password password, required String nickName}) async {
    try {
      final _userRepository = _reader(userRepositoryProvider);
      final result = await _auth.createUserWithEmailAndPassword(
          email: email.value.getOrElse(() => ''), password: password.value.getOrElse(() => ''));

      final authResult = await _mapFirebaseUserToAuthResult(result.user);

      print(authResult);

      await _userRepository.saveUserInfo(nickName: nickName, authResult: authResult);
    } on FirebaseAuthException catch (e) {
      throw AuthFailure.register(e.message.toString());
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } on FirebaseAuthException catch (e) {
      throw AuthFailure.signOut(e.message.toString());
    }
  }

  @override
  Future<IAuthResult?> getCurrentUser() async {
    final currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser == null) {
      return null;
    }

    return _mapFirebaseUserToAuthResult(currentUser);
  }

  @override
  Future<void> signWithEmailAndPassword(
      {required EmailAddress email, required Password password}) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: email.toString(), password: password.toString());
    } on FirebaseAuthException catch (e) {
      throw AuthFailure.signIn(e.message.toString());
    }
  }

  @override
  Stream<IAuthResult> get onAuthStateChanged =>
      _auth.authStateChanges().asyncMap(_mapFirebaseUserToAuthResult);
}
