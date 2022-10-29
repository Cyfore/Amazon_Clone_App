library signin_screen;

import 'package:amazon_clone_app/common/widgets/radio_list_tile/custom_radio_list_tile.dart';
import 'package:amazon_clone_app/common/widgets/textfield/custom_textfiled.dart';
import 'package:amazon_clone_app/constants/consts.dart';

import '../../../common/widgets/app_logo.dart';
import '../../../common/widgets/text/custom_bold_text.dart';

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
  Auth _auth = Auth.signup;

  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const AppLogo(height: 50, width: 130),
        backgroundColor: MyColors.lightGrey,
      ),
      body: Padding(
        padding: const ScreenPadding.all(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomBoldText(text: AppConstants.welcome),
            CustomRadioListTile(
              text: Auth.signup.name,
              value: Auth.signup,
              groupValue: _auth,
              onChanged: (val) {
                setState(() {
                  _auth = (val ?? Auth.signin);
                });
              },
            ),
            if (_auth == Auth.signup)
              Form(
                  key: _signUpFormKey,
                  child: Column(
                    children: [
                      CustomTextField(controller: emailcontroller),
                    ],
                  )),
            CustomRadioListTile(
              text: Auth.signin.name,
              value: Auth.signin,
              groupValue: _auth,
              onChanged: (val) {
                setState(() {
                  _auth = val ?? Auth.signin;
                });
              },
            ),
            if (_auth == Auth.signin)
              Form(
                  key: _signUpFormKey,
                  child: Column(
                    children: [
                      CustomTextField(controller: emailcontroller),
                    ],
                  )),
          ],
        ),
      ),
    );
  }
}
