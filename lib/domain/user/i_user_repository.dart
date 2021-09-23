import 'package:netflix_clone/domain/auth/i_auth_facade.dart';
import 'package:riverpod/riverpod.dart';

final userRepositoryProvider = Provider<IUserRepository>((ref) => throw UnimplementedError());

abstract class IUserRepository {
  Future<void> saveUserInfo({
    required IAuthResult authResult,
    required String nickName,
  });
}
