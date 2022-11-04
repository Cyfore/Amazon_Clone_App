import 'package:amazon_clone_app/constants/consts.dart';

import '../features/auth/auth_screen/signin_screen.dart';

class AuthController extends GetxController {
  Auth auth = Auth.signin;
  RxBool authRoute = false.obs;
  radioOnChanged(Auth? val) {
    auth = (val ?? Auth.signin);
    update();
  }
}
