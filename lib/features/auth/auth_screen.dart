library signin_screen;

import 'package:amazon_clone_app/common/widgets/radio_list_tile/custom_radio_list_tile.dart';
import 'package:amazon_clone_app/common/widgets/textfield/custom_textfiled.dart';
import 'package:amazon_clone_app/constants/consts.dart';
import 'package:amazon_clone_app/global/controllers/auth_controller.dart';
import 'package:amazon_clone_app/features/auth/auth_constants/auth_constants.dart';
import 'package:amazon_clone_app/features/services/auth_service.dart';

import '../../../common/widgets/button/custom_button.dart';
import '../../../common/widgets/text/custom_bold_text.dart';
import 'auth_appbar.dart';

enum Auth {
  signin,
  signup,
}

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final AuthService authService = AuthService();

  RxBool isPasswordVisible = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AuthAppBar(),
      backgroundColor: MyColors.lightGrey,
      body: Padding(
        padding: const ScreenPadding.all(),
        child: GetBuilder<AuthController>(
          builder: (controller) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomBoldText(text: AppConstants.welcome),
              Container(
                color:
                    controller.authRoute.value == true ? const Color.fromARGB(255, 225, 225, 225) : MyColors.whiteColor,
                padding: SigninPadding.onlyLTenP,
                child: CustomRadioListTile(
                  text: AuthConstants.createAccount,
                  value: Auth.signup,
                  groupValue: controller.auth,
                  onChanged: (val) {
                    controller.radioOnChanged(val);
                    controller.authRoute(false);
                  },
                ),
              ),
              if (controller.auth == Auth.signup && controller.authRoute.value == false)
                Form(
                    key: controller.signUpFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomBoldText(text: AuthConstants.userSurAndName, fontSize: AuthConstants.twentyP),
                        CustomTextFormField(
                            controller: controller.userNameAndSurController,
                            suffixIcon: controller.userNameAndSurController.text.isEmpty
                                ? const SizedBox()
                                : IconButton(
                                    onPressed: () {
                                      controller.userNameAndSurController.clear();
                                    },
                                    icon: const Icon(Icons.close_outlined))),
                        10.heightBox,
                        const CustomBoldText(text: AuthConstants.emailOrPhone, fontSize: AuthConstants.twentyP),
                        CustomTextFormField(
                            controller: controller.emailAndPhoneControllerSignUp,
                            suffixIcon: controller.emailAndPhoneControllerSignUp.text.isEmpty
                                ? nil
                                : IconButton(
                                    onPressed: () {
                                      controller.emailAndPhoneControllerSignUp.clear();
                                    },
                                    icon: const Icon(Icons.close_outlined))),
                        10.heightBox,
                        const CustomBoldText(text: AuthConstants.creatPassword, fontSize: AuthConstants.twentyP),
                        CustomTextFormField(
                            textInputAction: TextInputAction.done,
                            obscureText: controller.isPasswordVisible.value ? false : true,
                            controller: controller.passwordController,
                            suffixIcon: controller.passwordController.text.isEmpty
                                ? nil
                                : IconButton(
                                    onPressed: () {
                                      if (controller.isPasswordVisible == isPasswordVisible) {
                                        controller.isPasswordVisible(true);
                                        controller.update();
                                      } else {
                                        controller.isPasswordVisible(false);
                                        controller.update();
                                      }
                                    },
                                    icon: controller.isPasswordVisible == isPasswordVisible
                                        ? const Icon(Icons.visibility_off)
                                        : const Icon(Icons.visibility_outlined))),
                        CustomButton(
                            text: AppConstants.continue_,
                            onPressed: () {
                              if (controller.signUpFormKey.currentState!.validate()) {
                                controller.signUpUser(context: context);
                              }
                            }),
                      ],
                    )).box.color(Colors.white).padding(SigninPadding.onlyLAndRTwentyP).make(),
              Container(
                padding: SigninPadding.onlyLTenP,
                color: controller.authRoute.value == false
                    ? const Color.fromARGB(255, 225, 225, 225)
                    : MyColors.whiteColor,
                child: CustomRadioListTile(
                  text: AuthConstants.signinAccount,
                  value: Auth.signin,
                  groupValue: controller.auth,
                  onChanged: (val) {
                    controller.radioOnChanged(val);
                    controller.authRoute(true);
                  },
                ),
              ),
              if (controller.auth == Auth.signin && controller.authRoute.value == true)
                Form(
                    key: controller.signInFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomBoldText(text: AuthConstants.emailOrPhone, fontSize: AuthConstants.twentyP),
                        CustomTextFormField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            controller: controller.emailAndPhoneControllerSignIn,
                            suffixIcon: controller.emailAndPhoneControllerSignIn.text.isEmpty
                                ? nil
                                : IconButton(
                                    onPressed: () {
                                      controller.emailAndPhoneControllerSignIn.clear();
                                    },
                                    icon: const Icon(Icons.close_outlined))),
                        CustomButton(
                          text: AppConstants.continue_,
                          onPressed: () {
                            if (controller.signInFormKey.currentState!.validate()) {
                              controller.signInUser(context: context);
                            }
                          },
                        ),
                      ],
                    )).box.color(Colors.white).padding(SigninPadding.onlyLAndRTwentyP).make(),
            ],
          ),
        ),
      ),
    );
  }
}

class SigninPadding {
  //only
  static const onlyLTwentyP = EdgeInsets.only(left: AuthConstants.twentyP);
  static const onlyLTenP = EdgeInsets.only(left: 10);
  static const onlyLAndRTwentyP = EdgeInsets.only(left: AuthConstants.twentyP, right: AuthConstants.twentyP);

  //
}
