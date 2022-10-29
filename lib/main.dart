import 'package:amazon_clone_app/routes/routes.dart';
import 'constants/consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: getThemeData(),
      initialRoute: RoutesClass.splash,
      getPages: RoutesClass.routes,
    );
  }
}
