import 'package:amazon_clone_app/common/widgets/app_logo.dart';
import 'package:amazon_clone_app/common/widgets/text/custom_bold_text.dart';
import 'package:amazon_clone_app/common/widgets/text/custom_regular_text.dart';
import 'package:amazon_clone_app/constants/consts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          (context.screenHeight * 0.09).heightBox,
          const AppLogo(),
          (context.screenHeight * 0.03).heightBox,
          const CustomBoldText(text: 'Hesabınıza giriş yapın'),
          Container(
            alignment: Alignment.centerLeft,
            child: const CustomRegularText(
              text: 'istek listenizi görüntüleyin',
            ),
          ),
        ],
      ),
    );
  }
}
