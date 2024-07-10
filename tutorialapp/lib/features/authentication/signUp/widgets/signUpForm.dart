// ignore_for_file: file_names, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tutorialapp/features/authentication/login/loginScreen.dart';
import 'package:tutorialapp/utils/constraints/sizes.dart';
import 'package:tutorialapp/utils/constraints/text_strings.dart';

class signUpForm extends StatelessWidget {
  const signUpForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: ASizes.spaceBtwItems / 2),
      child: Column(
        children: [
          Row(
            children: [
              //first name
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(ATexts.firstname),
                    const SizedBox(
                      height: 5.0,
                    ),
                    TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'John',
                            hintStyle: TextStyle(fontWeight: FontWeight.w300)),
                        keyboardType: TextInputType.text),
                  ],
                ),
              ),
              SizedBox(width: ASizes.spaceBteInputFields),

              //last name
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      ATexts.lastname,
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Doe',
                            hintStyle: TextStyle(fontWeight: FontWeight.w300)),
                        keyboardType: TextInputType.text),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: ASizes.spaceBteInputFields),

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
          const SizedBox(height: ASizes.spaceBteInputFields),

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
                  keyboardType: TextInputType.number),
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
          const SizedBox(height: ASizes.spaceBtwSections * 1.5),

          //sign in button. wrap with sizedbox so u can give infinity width of stretching the screen size.
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const loginScreen()),
                  child: const Text(ATexts.signup))),
          const SizedBox(height: ASizes.spaceBtwItems),
        ],
      ),
    ));
  }
}
