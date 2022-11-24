import 'package:amazon_clone_app/constants/consts.dart';
import 'package:amazon_clone_app/global/controllers/auth_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GetBuilder<AuthController>(
        init: AuthController(),
        builder: (controller) {
          return Text(
            controller.user.toJson(),
          );
        },
      )),
    );
  }
}
