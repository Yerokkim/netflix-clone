import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netflix_clone/domain/auth/i_auth_facade.dart';
import 'package:netflix_clone/domain/user/i_user_repository.dart';
import 'package:netflix_clone/infrastructure/auth/auth_repository.dart';
import 'package:netflix_clone/infrastructure/user/user_repository.dart';
import 'package:netflix_clone/presentation/auth/auth_page.dart';

import 'package:netflix_clone/presentation/wigets/nav_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProviderScope(
    child: NetflixClone(),
    overrides: [
      firebaseAuthRepositoryProvider.overrideWithProvider(
        Provider<IAuthFacade>((ref) => AuthRepository(ref.read)),
      ),
      userRepositoryProvider.overrideWithProvider(
        Provider<IUserRepository>((ref) => UserRepository()),
      )
    ],
  ));
}

class NetflixClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: NavBar(),
      ),
      body: AuthPage(),
    );
  }
}
