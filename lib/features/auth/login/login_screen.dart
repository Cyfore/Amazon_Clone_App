import 'package:amazon_clone_app/features/common/widgets/app_logo.dart';
import 'package:amazon_clone_app/features/common/widgets/text/bold_text.dart';
import 'package:amazon_clone_app/features/common/widgets/text/regular_text.dart';
import 'package:amazon_clone_app/constants/consts.dart';
import 'package:amazon_clone_app/constants/paddings.dart';

import '../auth_constants/auth_constants.dart';
import 'widgets/login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const ScreenPadding.all(),
        child: Column(
          children: [
            (context.screenHeight * 0.04).heightBox,
            const AppLogo(),
            (context.screenHeight * 0.03).heightBox,
            const CustomBoldText(text: AuthConstants.signinInfo),
            (context.screenHeight * 0.01).heightBox,
            const Info(),
            const ButtonListView(),
          ],
        ),
      ),
    );
  }
}

class ButtonListView extends StatelessWidget {
  const ButtonListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: AuthConstants.info.length,
        itemBuilder: (context, index) => Padding(
          padding: LoginButtonPadding.loginButtonPadding,
          child: LoginButton(
            info: AuthConstants.info[index],
            color: AuthConstants.colors[index],
          ),
        ),
      ),
    );
  }
}

class Info extends StatelessWidget {
  const Info({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment(-0.5, 0),
      child: CustomRegularText(
        text: AuthConstants.preliminaryInformation,
      ),
    );
  }
}

class LoginButtonPadding {
  static const double _normalValue = 6;

  static const loginButtonPadding = EdgeInsets.only(bottom: _normalValue);
}
