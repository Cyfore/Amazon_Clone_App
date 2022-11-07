import 'package:amazon_clone_app/constants/consts.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.controller, this.suffixIcon, this.obscureText = false});
  final bool obscureText;
  final TextEditingController controller;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: inputDecoration(suffixIcon: suffixIcon),
    );
  }
}
