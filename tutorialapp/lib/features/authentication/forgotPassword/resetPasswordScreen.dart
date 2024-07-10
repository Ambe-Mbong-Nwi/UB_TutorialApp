// ignore_for_file: unused_field, file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:get/get.dart';
import 'package:tutorialapp/features/authentication/forgotPassword/forgotPasswordScreen.dart';
import 'package:tutorialapp/features/authentication/forgotPassword/widgets/customCurvedEdgeWidgetMain.dart';
import 'package:tutorialapp/features/authentication/forgotPassword/widgets/resetPasswordAppbar.dart';
import 'package:tutorialapp/utils/constraints/colors.dart';
import 'package:tutorialapp/utils/constraints/image_strings.dart';
import 'package:tutorialapp/utils/constraints/sizes.dart';
import 'package:tutorialapp/utils/constraints/text_strings.dart';
import 'package:tutorialapp/utils/helpers/helper_functions.dart';

class resetPasswordScreen extends StatefulWidget {
  const resetPasswordScreen({super.key});

  @override
  State<resetPasswordScreen> createState() => _resetPasswordScreenState();
}

class _resetPasswordScreenState extends State<resetPasswordScreen> {
  bool _onEditing = true;
  String? _code;
  @override
  Widget build(BuildContext context) {
    //targetting if its the dark context, if true or false, store value in variable

    return Scaffold(
      body: SingleChildScrollView(
          //make it scrollable for small screens.
          child: Column(
        children: [
          //title, and subtitle
          const customCurvedEdgeWidgetMain(),

          const resetPasswordAppBar(),

          //illustration
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Center(
                  child: Image(
                    image: const AssetImage(AImages.resetPassword),
                    width: AHelperFunctions.screenWidth() * 0.6,
                  ),
                ),

                const SizedBox(height: ASizes.spaceBtwSections),

                //text
                Text(ATexts.resetPasswordTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center),
                const SizedBox(height: ASizes.spaceBtwSections),

                //code verification
                VerificationCode(
                  keyboardType: TextInputType.number,
                  underlineColor: AColors.black,
                  length: 5,
                  cursorColor: Colors.blue,
                  onCompleted: (String value) {
                    setState(() {
                      _code = value;
                    });
                  },
                  onEditing: (bool value) {
                    setState(() {
                      _onEditing = value;
                    });
                    if (!_onEditing) FocusScope.of(context).unfocus();
                  },
                ),
                const SizedBox(height: ASizes.spaceBtwItems),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Code expires in: ',
                        style: Theme.of(context).textTheme.bodyMedium),
                    Text('3:25', style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),

                const SizedBox(height: ASizes.spaceBtwSections),

                //sign in button. wrap with sizedbox so u can give infinity width of stretching the screen size.
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () =>
                            Get.to(() => const forgotPasswordScreen()),
                        child: const Text(ATexts.verify))),
                const SizedBox(height: ASizes.spaceBtwItems),

//resend button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(ATexts.notReceiveCode,
                        style: Theme.of(context).textTheme.bodyMedium),
                    //button
                    TextButton(
                        onPressed: () {},
                        child: const Text(ATexts.resend,
                            style: TextStyle(
                              color: AColors.primary,
                              fontSize: ASizes.fontSizeMd,
                            ))),
                  ],
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
