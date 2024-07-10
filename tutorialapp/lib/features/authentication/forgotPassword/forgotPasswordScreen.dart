// ignore_for_file: file_names, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tutorialapp/features/authentication/forgotPassword/widgets/fPasswordForm.dart';
import 'package:tutorialapp/features/authentication/forgotPassword/widgets/fPasswordHeader.dart';
import 'package:tutorialapp/features/authentication/login/widgets/customCurvedWidget.dart';
import 'package:tutorialapp/utils/helpers/helper_functions.dart';

class forgotPasswordScreen extends StatelessWidget {
  const forgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //targetting if its the dark context, if true or false, store value in variable
    final dark = AHelperFunctions.isDarkMode(context);

    return Scaffold(
        body: SingleChildScrollView(
            //make it scrollable for small screens.
            child: Column(
      children: [
        //title, and subtitle
        const customCurvedEdgeWidget(child: forgotPasswordHeader()),

        //Form
        Padding(
          padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 20.0),
          child: forgotPasswordForm(dark: dark),
        ),
      ],
    )));
  }
}
