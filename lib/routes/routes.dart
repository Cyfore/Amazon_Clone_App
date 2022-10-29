import 'package:amazon_clone_app/features/auth/error/error_screen.dart';
import 'package:amazon_clone_app/features/auth/login/login_screen.dart';
import 'package:amazon_clone_app/features/auth/signin/signin_screen.dart';
import 'package:amazon_clone_app/features/splash/splash_screen.dart';
import 'package:get/get.dart';

class RoutesClass {
  static const String splash = '/';
  static const String login = '/login';
  static const String error = '/error';
  static const String signin = '/signin';
  static String getSplashRoute() => splash;
  static String getLoginRoute() => login;
  static String getErrorRoute() => error;
  static String getSignInRoute() => signin;

  static List<GetPage> routes = [
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(
      name: splash,
      page: () => const LoginScreen(),
      transition: Transition.fade,
    ),
    GetPage(name: error, page: () => const ErrorScreen()),
    GetPage(name: signin, page: () => const SignInScreen()),
  ];
}
