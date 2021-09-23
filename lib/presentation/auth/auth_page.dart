import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netflix_clone/presentation/loading/loading_page.dart';
import 'package:netflix_clone/presentation/onboarding/on_boarding_page.dart';
import 'package:netflix_clone/presentation/providers/auth_providers/auth_providers.dart';
import 'package:netflix_clone/presentation/selct_user/select_user_page.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, watch, child) {
      final authState = watch(authStateProvider);

      return authState.when(
        unauthenticated: () => OnBoardingPage(),
        authenticated: (authData) => SelectUserPage(),
        loading: () => LoadingPage(),
        authFailure: () => Container(),
      );
    });
  }
}
