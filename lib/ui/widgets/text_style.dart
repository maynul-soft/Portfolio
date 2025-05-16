import 'dart:ui';
import 'package:flutter/material.dart';

class DefineTextStyle {
  static TextStyle medium() {
    return TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle large() {
    return TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle smallShadowText() {
    return TextStyle(
      color: Colors.black38,
      fontSize: 18,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle smallNormal() {
    return TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontFamily: 'Poppins',
    );
  }
}
