library signin_screen;

import 'package:amazon_clone_app/common/widgets/radio_list_tile/custom_radio_list_tile.dart';
import 'package:amazon_clone_app/common/widgets/textfield/custom_textfiled.dart';
import 'package:amazon_clone_app/constants/consts.dart';
import 'package:amazon_clone_app/controllers/auth_controller.dart';
import 'package:amazon_clone_app/features/auth/auth_constants/auth_constants.dart';

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
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();
  final TextEditingController emailcontroller = TextEditingController();
  final controller = Get.put(AuthController());

  @override
  void dispose() {
    emailcontroller.dispose();
    super.dispose();
  }

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
                padding: const EdgeInsets.only(left: 10),
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
                    key: _signUpFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomBoldText(text: AuthConstants.userSurAndName, fontSize: AuthConstants.twentyP),
                        CustomTextFormField(controller: emailcontroller),
                        10.heightBox,
                        const CustomBoldText(text: AuthConstants.emailOrPhone, fontSize: AuthConstants.twentyP),
                        CustomTextFormField(controller: emailcontroller),
                        10.heightBox,
                        const CustomBoldText(text: AuthConstants.creatPassword, fontSize: AuthConstants.twentyP),
                        CustomTextFormField(controller: emailcontroller),
                        const CustomButton(
                          text: AppConstants.continue_,
                        ),
                      ],
                    )).box.color(Colors.white).padding(SigninPadding.onlyLAndRTwentyP).make(),
              Container(
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
                    key: _signUpFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomBoldText(text: AuthConstants.emailOrPhone, fontSize: AuthConstants.twentyP),
                        CustomTextFormField(controller: emailcontroller),
                        const CustomButton(
                          text: AppConstants.continue_,
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
  static const onlyLAndRTwentyP = EdgeInsets.only(left: AuthConstants.twentyP, right: AuthConstants.twentyP);

  //
}
