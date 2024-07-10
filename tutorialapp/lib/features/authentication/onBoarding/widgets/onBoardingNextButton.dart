// ignore_for_file: camel_case_types, file_names
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tutorialapp/features/authentication/controllersOnboarding/onBoardingController.dart';
import 'package:tutorialapp/utils/constraints/colors.dart';
import 'package:tutorialapp/utils/constraints/sizes.dart';
import 'package:tutorialapp/utils/device/device_utility.dart';

class onBoardingNextButton extends StatelessWidget {
  const onBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: ASizes.defaultSpace,
      bottom: ADeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            backgroundColor: AColors.primary,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0)),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}


//just getting an instance of onBoardingController and not using Get.put here bcos it has already been done in onboarding.dart where this dot has been used.
    