import 'package:amazon_clone_app/constants/consts.dart';

import '../features/auth/auth_screen/signin_screen.dart';

class AuthController extends GetxController {
  Auth auth = Auth.signin;
  RxBool authRoute = false.obs;
  static AuthController instance = Get.find();
  final signUpFormKey = GlobalKey<FormState>();
  late TextEditingController emailAndPhoneController, passwordController, userNameAndSurController;
  radioOnChanged(Auth? val) {
    auth = (val ?? Auth.signin);
    update();
  }

  @override
  void onInit() {
    emailAndPhoneController = TextEditingController();
    passwordController = TextEditingController();
    userNameAndSurController = TextEditingController();

    emailAndPhoneController.addListener(
      () => update(),
    );
    passwordController.addListener(
      () => update(),
    );
    userNameAndSurController.addListener(
      () => update(),
    );
    update();
    super.onInit();
  }

  void signOut() {
    emailAndPhoneController.clear();
  }
}
