import 'package:amazon_clone_app/constants/consts.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key, this.height = 100, this.width = 250});
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Image.asset(
        ImageConstants.amazon,
        height: height,
        width: width,
        fit: BoxFit.cover,
      ),
    );
  }
}
