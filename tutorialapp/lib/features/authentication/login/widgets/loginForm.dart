// ignore_for_file: camel_case_types, unused_import, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tutorialapp/features/authentication/forgotPassword/emailVerification.dart';
import 'package:tutorialapp/features/authentication/forgotPassword/forgotPasswordScreen.dart';
import 'package:tutorialapp/utils/constraints/colors.dart';
import 'package:tutorialapp/utils/constraints/sizes.dart';
import 'package:tutorialapp/utils/constraints/text_strings.dart';

class loginForm extends StatelessWidget {
  const loginForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: ASizes.spaceBtwItems),
      child: Column(
        children: [
          //phone number
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                ATexts.pNumber,
              ),
              const SizedBox(
                height: 5.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: '677960506',
                    hintStyle: TextStyle(fontWeight: FontWeight.w300)),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          const SizedBox(height: ASizes.spaceBteInputFields),

          //password
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                ATexts.password,
              ),
              const SizedBox(
                height: 5.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: '...............',
                    suffixIcon: Icon(Iconsax.eye_slash)),
              ),
            ],
          ),
          const SizedBox(height: ASizes.spaceBteInputFields / 1.5),

          //forgetpassword
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                  onPressed: () => Get.to(() => const emailVerification()),
                  child: const Text(ATexts.forgotPassword,
                      style: TextStyle(
                        color: AColors.primary,
                        fontSize: ASizes.fontSizeMd,
                      ))),
            ],
          ),
          const SizedBox(height: ASizes.spaceBtwSections * 6),

          //sign in button. wrap with sizedbox so u can give infinity width of stretching the screen size.
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  //onPressed: () => Get.to(() => const buyerNavigation()),
                  child: const Text(ATexts.login))),
          const SizedBox(height: ASizes.spaceBtwItems),
        ],
      ),
    ));
  }
}
