import 'dart:ui';

import 'package:flutter/material.dart';

class AColors {
  AColors._();

//App Basic Colors
  static const Color primary = Color(0xffD339A9);
  static const Color secondary = Color.fromRGBO(211, 57, 169, 0.12);
  static const Color accent = Color(0xFFA1FEFE);

  //Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  //Backgrounds Cards
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  //Background Container Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = AColors.white.withOpacity(0.1);

  //Button Colors
  static const Color buttonPrimary = Color(0xff007D69);
  static const Color buttonSecondary = Color(0xff6c757d);
  static const Color buttonButtonDisabled = Color(0xffc4c4c4);

  //Border Colors
  static const Color borderPrimary = Color(0xffd9d9d9);
  static const Color borderSecondary = Color(0xffe6e6e6);

  //errors and validation Colors
  static const Color error = Color(0xffd32f2f);
  static const Color success = Color(0xff388e32);
  static const Color warning = Color(0xfff57c00);
  static const Color info = Color(0xff1976d2);

  //neutral Shades
  static const Color black = Color(0xff151515);
  static const Color darkerGrey = Color(0xff4f4f4f);
  static const Color darkGrey = Color(0xff939393);
  static const Color grey = Color(0xffe0e0e0);
  static const Color softGrey = Color(0xff989898);
  static const Color lightGrey = Color(0xfff9f9f9);
  static const Color white = Color(0xffffffff);
}
