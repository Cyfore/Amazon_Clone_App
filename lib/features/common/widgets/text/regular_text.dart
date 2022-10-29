import 'package:flutter/material.dart';

class CustomRegularText extends StatelessWidget {
  const CustomRegularText({super.key, required this.text, this.size = 20, this.textAlign = TextAlign.left});
  final String text;
  final double size;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(fontFamily: 'sans_regular', fontSize: size, color: Colors.black),
    );
  }
}
