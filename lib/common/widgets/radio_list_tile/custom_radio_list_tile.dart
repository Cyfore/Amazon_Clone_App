import 'package:amazon_clone_app/constants/consts.dart';

import '../../../features/auth/auth_screen/signin_screen.dart';

class CustomRadioListTile extends StatelessWidget {
  const CustomRadioListTile(
      {super.key, required this.value, required this.groupValue, required this.text, required this.onChanged});
  final dynamic value;
  final dynamic groupValue;
  final String text;
  final Function(Auth?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return RadioListTile<Auth>(
      contentPadding: ScreenPadding.allZero,
      title: RichText(
        text: TextSpan(
          text: text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      activeColor: MyColors.golden,
      groupValue: groupValue,
      value: value,
      onChanged: onChanged,
    );
  }
}
