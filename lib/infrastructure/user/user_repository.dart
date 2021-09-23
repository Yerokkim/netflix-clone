import 'package:firebase_auth/firebase_auth.dart';
import 'package:netflix_clone/domain/auth/i_auth_facade.dart';
import 'package:netflix_clone/domain/user/i_user_repository.dart';
import 'package:netflix_clone/infrastructure/database/firestore_service.dart';
import 'package:netflix_clone/infrastructure/models/user.dart';
import 'package:riverpod/riverpod.dart';

class FirebaseAuthResult implements IAuthResult {
  final User? _user;

  FirebaseAuthResult(this._user);

  @override
  String get uid => _user!.uid;

  @override
  DateTime get creationTime => _user!.metadata.creationTime!;

  @override
  DateTime get lastSignInTime => _user!.metadata.lastSignInTime!;

  @override
  Future<void> delete() => _user!.delete();

  @override
  bool get hasUser => _user != null;

  @override
  String get name => throw UnimplementedError();
}

class FirebaseAuthUser implements IAuthUser {
  final User _firebaseUser;

  FirebaseAuthUser(this._firebaseUser);

  @override
  String get uid => _firebaseUser.uid;

  @override
  Future<String> getIdToken() => _firebaseUser.getIdToken();

  @override
  Future<void> delete() => _firebaseUser.delete();
}

class UserRepository implements IUserRepository {
  // final Reader _reader;

  // UserRepository(this._reader);

  @override
  Future<void> saveUserInfo({
    required IAuthResult authResult,
    required String nickName,
  }) async {
    try {
      final now = DateTime.now();
      final userDoc = FirestoreService.users.doc(authResult.uid);

      final userModel = UserModel(
        id: authResult.uid,
        name: nickName,
        createdAt: now,
        hasSeenOnboarding: true,
      );

      userDoc
        ..set(
          userModel.toJson(),
        );
    } catch (e) {
      print(e);
    }
  }
}
