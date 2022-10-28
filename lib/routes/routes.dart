import 'package:amazon_clone_app/features/auth/login/login_screen.dart';
import 'package:amazon_clone_app/features/splash/splash_screen.dart';
import 'package:get/get.dart';

class RoutesClass {
  static const String splash = '/';
  static const String login = '/login';
  static String getSplashRoute() => splash;
  static String getLoginRoute() => login;

  static List<GetPage> routes = [
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(
      name: splash,
      page: () => const LoginScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(seconds: 1),
    ),
  ];
}
