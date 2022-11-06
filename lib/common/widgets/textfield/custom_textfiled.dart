import 'package:flutter/material.dart';

import '../../../constants/helper_methods.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.controller, this.suffixIcon});
  final TextEditingController controller;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: inputDecoration(suffixIcon: suffixIcon),
    );
  }
}
