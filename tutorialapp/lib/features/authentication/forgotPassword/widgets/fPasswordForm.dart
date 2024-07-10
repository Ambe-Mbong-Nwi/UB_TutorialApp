// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tutorialapp/features/authentication/login/loginScreen.dart';
import 'package:tutorialapp/utils/constraints/sizes.dart';
import 'package:tutorialapp/utils/constraints/text_strings.dart';

class forgotPasswordForm extends StatelessWidget {
  const forgotPasswordForm({
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
          //new password
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                ATexts.newPassword,
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
          const SizedBox(height: ASizes.spaceBteInputFields),

          //confirm password
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                ATexts.cPassword,
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

          const SizedBox(height: ASizes.spaceBtwSections * 8),

          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.offAll(() => const loginScreen()),
                  child: const Text(ATexts.resetPassword))),
          const SizedBox(height: ASizes.spaceBtwItems),
        ],
      ),
    ));
  }
}
