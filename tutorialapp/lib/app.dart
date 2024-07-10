// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tutorialapp/features/authentication/forgotPassword/resetPasswordScreen.dart';
import 'package:tutorialapp/features/authentication/onBoarding/onBoarding.dart';
import 'package:tutorialapp/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //flutter detects system theme and changes to dark or light mode accordingly. You can also directly pass light or dark mode from here.
      themeMode: ThemeMode.system,
      theme: AAppTheme.lightTheme, //light theme i defined in utils folder
      darkTheme: AAppTheme.darkTheme, //dark theme
      home: const OnBoardingScreen(),
    );
  }
}
