import 'package:flutter/material.dart';

class CustomRegularText extends StatelessWidget {
  const CustomRegularText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontFamily: 'sans_regular'),
    );
  }
}
