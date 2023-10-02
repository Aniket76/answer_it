import 'package:answer_it/presentation/views/home/home_screen.dart';
import 'package:answer_it/presentation/views/login/login_screen.dart';
import 'package:answer_it/presentation/views/sign_in/sign_in_screen.dart';
import 'package:answer_it/presentation/views/sign_up/sign_up_screen.dart';
import 'package:answer_it/presentation/views/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case MobileRoutes.initialRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case MobileRoutes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case MobileRoutes.signInRoute:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case MobileRoutes.signUpRoute:
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case MobileRoutes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return errorScreen();
    }
  }

  static MaterialPageRoute errorScreen() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: Center(
          child: Text('Error'),
        ),
      );
    });
  }
}

class MobileRoutes {
  static const String initialRoute = '/';
  static const String loginRoute = '/login';
  static const String signInRoute = '/signIn';
  static const String signUpRoute = '/signUp';
  static const String homeRoute = '/home';
}
