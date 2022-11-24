import 'package:amazon_clone_app/features/home/home_view.dart';
import 'package:amazon_clone_app/features/services/auth_service.dart';
import 'package:amazon_clone_app/features/welcome/welcome_screen.dart';
import 'package:amazon_clone_app/global/controllers/auth_controller.dart';

import 'constants/consts.dart';
import 'global/routes/routes.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();
  final AuthController authController = Get.put(AuthController());
  @override
  void initState() {
    authController.getUserData(context: context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      init: AuthController(),
      initState: (state) => AuthController(),
      builder: (_) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: getThemeData(),
          home: AuthController.instance.user.token!.isNotEmpty ? const HomeView() : const WelcomeScreen(),
          getPages: RoutesClass.routes,
        );
      },
    );
  }
}
