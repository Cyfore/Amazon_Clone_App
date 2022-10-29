import 'package:amazon_clone_app/common/widgets/text/regular_text.dart';
import 'package:amazon_clone_app/constants/consts.dart';
import 'package:amazon_clone_app/features/auth/auth_constants/auth_constants.dart';
import 'package:amazon_clone_app/routes/routes.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key, required this.info, required this.color});
  final Map<String, String> info;
  final int color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(color),
        ),
        onPressed: () => Get.toNamed(info['route'] ?? RoutesClass.error),
        child: Center(
          child: CustomRegularText(
            text: info['text'] ?? AuthConstants.buttonError,
            textAlign: TextAlign.center,
          ),
        ));
  }
}
