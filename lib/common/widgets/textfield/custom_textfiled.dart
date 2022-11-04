import 'package:flutter/material.dart';

import '../../../constants/helper_methods.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: inputDecoration(),
    );
  }
}
