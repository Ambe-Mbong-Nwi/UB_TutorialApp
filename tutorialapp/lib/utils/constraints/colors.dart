import 'package:flutter/material.dart';

class AColors {
  AColors._();

//App Basic Colors
  static const Color primary = Color(0xFF3FA245);
  static const Color primaryHover = Color(0xFF39923E);
  static const Color secondary = Color(0xFF2f7a34);
  static const Color accent = Color(0xFF163918);

//gradient colors
  static const Gradient linerGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.787, -0.787),
    colors: [
      Color(0xFF3FA245),
      Color(0xFF2f7a34),
      Color(0xFF163918),
    ],
  );

//Text Colors

  static const Color textprimary = Colors.black;
  static const Color textsecondary = Color(0xFFc3e2c5);
  static const Color textWhite = Colors.white;

//background colors

  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFFEFEFE);
  static const Color handy = Color(0xFF328237);
  static const Color handy2 = Color(0xFF266129);

//background container colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = AColors.dark.withOpacity(0.1);

//check colorss
//button colors
  static const Color buttonPrimary = Color(0xFFF6F6F6);
  static const Color buttonSecondary = Color(0xFF272727);
  static const Color buttonDisabled = Color(0xFFF3F5FF);

//border colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

//error and validation colors

  static const Color error = Colors.red;
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C60);
  static const Color info = Color(0xFFF1A183);

//Neutral shades
  static const Color black = Color(0xFF232323);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color darkGrey = Color(0xFF939393);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
