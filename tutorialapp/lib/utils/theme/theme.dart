import 'package:flutter/material.dart';
import 'package:tutorialapp/utils/constraints/colors.dart';
import 'package:tutorialapp/utils/theme/custom_themes/appbar_theme.dart';
import 'package:tutorialapp/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:tutorialapp/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:tutorialapp/utils/theme/custom_themes/chip_theme.dart';
import 'package:tutorialapp/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:tutorialapp/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:tutorialapp/utils/theme/custom_themes/text_field_theme.dart';
import 'package:tutorialapp/utils/theme/custom_themes/text_theme.dart';

class AAppTheme {
  AAppTheme._(); //so constuctor wont be used again and again

//static variable lightTheme storing ThemeData for that so we can easily call it
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true, //bcos we use it
      fontFamily: 'Roboto',
      brightness: Brightness.light,
      primaryColor: const Color(0xFF3FA245),
      scaffoldBackgroundColor: Colors.white,
      textTheme: ATextTheme
          .lightTextTheme, //create a new class texttheme that defines this in the utils custom_themes text_theme file
      elevatedButtonTheme: AElevatedButtonTheme.lightElevatedButtonTheme,
      chipTheme: AChipTheme.lightChipTheme,
      appBarTheme: AAppBarTheme.lightAppBarTheme,
      bottomSheetTheme: ABottomSheetTheme.lightBottomSheetTheme,
      checkboxTheme: ACheckBoxTheme.lightCheckBoxTheme,
      outlinedButtonTheme: AOutlinedButtonTheme.lightOutlinedButtonThemeTheme,
      inputDecorationTheme: ATextFormFieldTheme.lightInputDecorationTheme);

//themedata for dark theme
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true, //bcos we use it
      fontFamily: 'Roboto',
      brightness: Brightness.dark,
      primaryColor: const Color(0xFF3FA245),
      scaffoldBackgroundColor: AColors.dark,
      textTheme: ATextTheme
          .darkTextTheme, //this is defined in the utils text_theme file
      elevatedButtonTheme: AElevatedButtonTheme.darkElevatedButtonTheme,
      chipTheme: AChipTheme.darkChipTheme,
      appBarTheme: AAppBarTheme.darkAppBarTheme,
      bottomSheetTheme: ABottomSheetTheme.darkBottomSheetTheme,
      checkboxTheme: ACheckBoxTheme.darkCheckBoxTheme,
      outlinedButtonTheme: AOutlinedButtonTheme.darkOutlinedButtonThemeTheme,
      inputDecorationTheme: ATextFormFieldTheme.darkInputDecorationTheme);
}
