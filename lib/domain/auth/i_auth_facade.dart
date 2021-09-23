import 'package:firebase_auth/firebase_auth.dart';
import 'package:netflix_clone/domain/auth/email_address.dart';
import 'package:netflix_clone/domain/auth/password.dart';
import 'package:riverpod/riverpod.dart';

abstract class IAuthResult {
  String get uid;

  bool get hasUser;

  String get name;

  DateTime get lastSignInTime;

  DateTime get creationTime;

  Future<void> delete();
}

abstract class IAuthUser {
  String get uid;

  Future<String> getIdToken();

  Future<void> delete();
}

final firebaseAuthRepositoryProvider = Provider<IAuthFacade>((ref) => throw UnimplementedError());

abstract class IAuthFacade {
  Future<void> signWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  });

  Future<void> registerWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
    required String nickName,
  });

  Future<void> signOut();

  bool get isSignedIn;

  Future<String> getCurrentUserId();

  IAuthUser get currentUser;

  Future<IAuthResult?> getCurrentUser();

  Stream<IAuthResult> get onAuthStateChanged;
}
