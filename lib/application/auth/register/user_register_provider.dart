import 'package:netflix_clone/domain/auth/email_address.dart';
import 'package:netflix_clone/domain/auth/i_auth_facade.dart';
import 'package:netflix_clone/domain/auth/password.dart';

import 'package:netflix_clone/presentation/providers/auth_providers/auth_providers.dart';
import 'package:riverpod/riverpod.dart';

class RegisterStateNotifier extends StateNotifier<AsyncValue> {
  final Reader _reader;

  RegisterStateNotifier(this._reader) : super(const AsyncValue.loading());

  Future<AsyncValue> register() async {
    try {
      final email = _reader(emailProvider).state;
      final pw = _reader(passwordProvider).state;
      final nickName = _reader(nickNameProvider).state;

      print(email);
      final _authRepository = _reader(firebaseAuthRepositoryProvider);

      final emails = EmailAddress(email);
      final ps = Password(pw);

      await _authRepository.registerWithEmailAndPassword(
        email: emails,
        password: ps,
        nickName: nickName,
      );

      return state = AsyncValue.data(null);
    } catch (e) {
      return state = AsyncValue.error(e);
    }
  }
}
