// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorialapp/features/authentication/forgotPassword/resetPasswordScreen.dart';
import 'package:tutorialapp/features/authentication/forgotPassword/widgets/customCurvedEdgeWidgetMain.dart';
import 'package:tutorialapp/features/authentication/forgotPassword/widgets/emailVerificationAppBar.dart';
import 'package:tutorialapp/utils/constraints/image_strings.dart';
import 'package:tutorialapp/utils/constraints/sizes.dart';
import 'package:tutorialapp/utils/constraints/text_strings.dart';
import 'package:tutorialapp/utils/helpers/helper_functions.dart';

class emailVerification extends StatelessWidget {
  const emailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    //targetting if its the dark context, if true or false, store value in variable

    return Scaffold(
      body: SingleChildScrollView(
          //make it scrollable for small screens.
          child: Column(children: [
        //title, and subtitle
        const customCurvedEdgeWidgetMain(),

        const emailVerificationAppBar(),
        const SizedBox(height: ASizes.spaceBtwSections),

        //illustration
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Center(
                child: Image(
              image: const AssetImage(AImages.verifyEmail),
              width: AHelperFunctions.screenWidth() * 0.6,
            )),
            const SizedBox(height: ASizes.spaceBtwSections),
            //text
            Text(ATexts.verifyEmailTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: ASizes.spaceBtwSections),

            //email
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  ATexts.email,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'johndoe@gmail.com',
                      hintStyle: TextStyle(fontWeight: FontWeight.w300)),
                  keyboardType: TextInputType.emailAddress,
                ),
              ],
            ),
            const SizedBox(height: ASizes.spaceBtwSections * 2),

            //sign in button. wrap with sizedbox so u can give infinity width of stretching the screen size.
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const resetPasswordScreen()),
                    child: const Text(ATexts.requestCode))),
            const SizedBox(height: ASizes.spaceBtwItems),
          ]),
        ),
      ])),
    );
  }
}
