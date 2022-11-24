import 'package:amazon_clone_app/global/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/widgets/app_logo.dart';
import '../welcome/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    if (AuthController.instance.user.token!.isEmpty) {
      Future.delayed(const Duration(seconds: 2), () {
        Get.to(const WelcomeScreen(), duration: const Duration(seconds: 1), transition: Transition.fade);
      });
    }
  }

  @override
  void initState() {
    changeScreen();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            AppLogo(),
          ],
        ),
      ),
    );
  }
}
