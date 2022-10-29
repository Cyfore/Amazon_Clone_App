library signin_screen;

import 'package:amazon_clone_app/common/widgets/radio_list_tile/custom_radio_list_tile.dart';
import 'package:amazon_clone_app/common/widgets/textfield/custom_textfiled.dart';
import 'package:amazon_clone_app/constants/consts.dart';
import 'package:amazon_clone_app/features/auth/auth_constants/auth_constants.dart';

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
  Auth _auth = Auth.signin;

  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();
  final TextEditingController emailcontroller = TextEditingController();

  @override
  void dispose() {
    emailcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AuthAppBar(),
      body: Padding(
        padding: const ScreenPadding.all(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomBoldText(text: AppConstants.welcome),
            CustomRadioListTile(
              text: AuthConstants.createAccount,
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
              text: AuthConstants.signinAccount,
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
