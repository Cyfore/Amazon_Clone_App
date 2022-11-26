import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../common/widgets/app_logo.dart';
import '../../global/routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() async {
    final userData = GetStorage();
    Future.delayed(const Duration(seconds: 2)).then((value) =>
        userData.read('isLogged') ? Get.offAllNamed(RoutesClass.home) : Get.offAllNamed(RoutesClass.welcome));
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
