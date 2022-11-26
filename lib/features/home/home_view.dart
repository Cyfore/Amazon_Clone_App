import 'package:amazon_clone_app/constants/consts.dart';
import 'package:amazon_clone_app/global/controllers/auth_controller.dart';
import 'package:get_storage/get_storage.dart';

class HomeView extends StatelessWidget {
  final userData = GetStorage();
  HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GetBuilder<AuthController>(
        init: AuthController(),
        builder: (controller) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                  child: Text(
                'Home Screen',
                style: TextStyle(fontSize: 30),
              )),
              Text(
                controller.user.toJson(),
              ),
              Text(
                userData.read('user'),
              ),
            ],
          );
        },
      )),
    );
  }
}
