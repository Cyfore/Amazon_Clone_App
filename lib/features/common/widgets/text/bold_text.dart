import 'package:amazon_clone_app/constants/consts.dart';

class CustomBoldText extends StatelessWidget {
  const CustomBoldText({super.key, required this.text, this.fontSize = 25});
  final String text;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        fontFamily: 'sans_bold'
      ),
    );
  }
}
