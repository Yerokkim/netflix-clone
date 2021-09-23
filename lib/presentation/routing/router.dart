import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/login_and_register/login_page.dart';
import 'package:netflix_clone/presentation/onBoarding/on_boarding_page.dart';

class Routes {
  Routes._();

  static const String onboarding = '/';
  static const String login = '/login';
  static const String register = '/register';
}

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) => PageRouteBuilder(
        settings: settings,
        pageBuilder: (context, animation, secondaryAnimation) {
          switch (settings.name) {
            case Routes.onboarding:
              return OnBoardingPage();
            case Routes.login:
              return LoginPage();

            default:
              return Scaffold(
                body: Center(child: Text('No route defined for ${settings.name}')),
              );
          }
        },
      );
}
