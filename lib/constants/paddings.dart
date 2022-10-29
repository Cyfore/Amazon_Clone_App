import 'package:flutter/material.dart';

class ScreenPadding extends EdgeInsets {
  static const double _normalValue = 20;

  const ScreenPadding.horizontalSymmetric() : super.symmetric(horizontal: _normalValue);
  const ScreenPadding.verticalSymmetric() : super.symmetric(vertical: _normalValue);
  const ScreenPadding.general() : super.only(right: _normalValue, left: _normalValue, top: _normalValue);
  const ScreenPadding.all() : super.all(_normalValue);
  const ScreenPadding.onlyLeft() : super.only(left: _normalValue);
  const ScreenPadding.onlyBottom() : super.only(bottom: _normalValue);
  const ScreenPadding.onlyTop() : super.only(top: _normalValue);
  const ScreenPadding.onlyRight() : super.only(right: _normalValue);

  static const allZero = EdgeInsets.all(0);
}
