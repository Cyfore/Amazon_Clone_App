import 'package:amazon_clone_app/features/auth/error/error_screen.dart';
import 'package:amazon_clone_app/features/auth/auth_screen/signin_screen.dart';
import 'package:amazon_clone_app/features/splash/splash_screen.dart';
import 'package:get/get.dart';

import '../features/auth/welcome/welcome_screen.dart';

class RoutesClass {
  static const String splash = '/';
  static const String login = '/login';
  static const String error = '/error';
  static const String auth = '/auth';
  static String getSplashRoute() => splash;
  static String getLoginRoute() => login;
  static String getErrorRoute() => error;
  static String getSignInRoute() => auth;

  static List<GetPage> routes = [
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(
      name: splash,
      page: () => const WelcomeScreen(),
      transition: Transition.fade,
    ),
    GetPage(name: error, page: () => const ErrorScreen()),
    GetPage(name: auth, page: () => const AuthScreen()),
  ];
}
