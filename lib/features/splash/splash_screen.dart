import 'package:amazon_clone_app/common/widgets/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../auth/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(const LoginScreen(), duration: const Duration(seconds: 1), transition: Transition.fade);
    });
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