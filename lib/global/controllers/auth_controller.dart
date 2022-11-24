import 'package:amazon_clone_app/constants/consts.dart';
import 'package:amazon_clone_app/models/user.dart';

import '../../features/auth/auth_screen.dart';
import '../../features/services/auth_service.dart';

class AuthController extends GetxController {
  Auth auth = Auth.signin;
  RxBool authRoute = false.obs;
  RxBool isPasswordVisible = false.obs;
  static AuthController instance = Get.find();
  final signUpFormKey = GlobalKey<FormState>();
  final signInFormKey = GlobalKey<FormState>();
  final AuthService authService = AuthService();
  late TextEditingController emailAndPhoneControllerSignUp,
      emailAndPhoneControllerSignIn,
      passwordController,
      userNameAndSurController;
  User _user = User(id: '', name: '', password: '', address: '', type: '', token: '', email: '');

  User get user => _user;
  @override
  void onInit() {
    emailAndPhoneControllerSignUp = TextEditingController();
    emailAndPhoneControllerSignIn = TextEditingController();
    passwordController = TextEditingController();
    userNameAndSurController = TextEditingController();

    controllerAddListener(emailAndPhoneControllerSignUp);
    controllerAddListener(emailAndPhoneControllerSignIn);
    controllerAddListener(passwordController);
    controllerAddListener(userNameAndSurController);
    super.onInit();
  }

  void setUser(String user) {
    _user = User.fromJson(user);
    update();
  }


  void setUserFromModel(User user) {
    _user = user;
    update();
  }

  radioOnChanged(Auth? val) {
    auth = (val ?? Auth.signin);
    update();
  }

  void signUpUser({required BuildContext context}) {
    authService.signUpUser(
        context: context,
        email: emailAndPhoneControllerSignUp.text,
        password: passwordController.text,
        name: userNameAndSurController.text);
  }

  void signInUser({required BuildContext context}) {
    authService.signInUser(
        context: context, email: emailAndPhoneControllerSignIn.text, password: passwordController.text);
  }

  controllerAddListener(TextEditingController controller) {
    controller.addListener(() => update());
  }

  void signOut() {
    emailAndPhoneControllerSignUp.clear();
    emailAndPhoneControllerSignIn.clear();
  }
}
