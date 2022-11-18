library welcome_screen;

import 'package:amazon_clone_app/common/widgets/text/custom_bold_text.dart';
import 'package:amazon_clone_app/constants/consts.dart';
import 'package:amazon_clone_app/controllers/auth_controller.dart';
import '../../common/widgets/app_logo.dart';
import '../../common/widgets/text/custom_regular_text.dart';
import '../../routes/routes.dart';
import '../auth/auth_constants/auth_constants.dart';

import '../auth/auth_screen.dart';
part 'welcome_button.dart';
part 'button_list_view.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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

class WelcomeButtonPadding {
  static const double _normalValue = 6;

  static const welcomeButtonPadding = EdgeInsets.only(bottom: _normalValue);
}
