import 'package:flutter/material.dart';

class TextStyles {
  static const TextStyle inter =
      TextStyle(fontWeight: FontWeight.w400, height: 1, fontFamily: 'Ubuntu');

  static TextStyle get heading8 => inter.copyWith(
      fontWeight: FontWeight.w700,
      fontSize: 16,
      letterSpacing: -1,
      height: 1.17);
  static TextStyle get caption => inter.copyWith(
      fontWeight: FontWeight.normal,
      fontSize: 12,
      letterSpacing: -1,
      height: 1.17);
}
