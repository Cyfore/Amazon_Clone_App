import 'package:amazon_clone_app/constants/consts.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Image.asset(
        ImageConstants.amazon,
        height: 100,
        width: 250,
        fit: BoxFit.cover,
      ),
    );
  }
}
