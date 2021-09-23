import 'package:netflix_clone/application/auth/login/auth_state_notifier.dart';
import 'package:netflix_clone/application/auth/register/user_register_provider.dart';

import 'package:riverpod/riverpod.dart';

final emailProvider = StateProvider<String>((ref) => '');

final passwordProvider = StateProvider<String>((ref) => '');

final nickNameProvider = StateProvider<String>((ref) => '');

final registerProvider = StateNotifierProvider((ref) => RegisterStateNotifier(ref.read));

final authStateProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>((ref) => AuthStateNotifier(ref.read));
