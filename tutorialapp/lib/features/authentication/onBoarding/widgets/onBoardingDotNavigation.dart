// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tutorialapp/features/authentication/controllersOnboarding/onBoardingController.dart';
import 'package:tutorialapp/utils/constraints/colors.dart';
import 'package:tutorialapp/utils/constraints/sizes.dart';
import 'package:tutorialapp/utils/device/device_utility.dart';
import 'package:tutorialapp/utils/helpers/helper_functions.dart';

// ignore: camel_case_types
class onBoardingDotNavigation extends StatelessWidget {
  const onBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //just getting an instance and not using Get.put here bcos it has already been done in onboarding.dart where this dot has been used.
    final controller = OnBoardingController.instance;

    //targetting if its the dark context, if true or false, store value in variable
    final dark = AHelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: ADeviceUtils.getBottomNavigationBarHeight() + 25,
        left: ASizes.defaultSpace,
        child: SmoothPageIndicator(
          //passing in pageController already defined in onboarding_controller.dart to know which page is currently visible and how many pages we have.
          //when clicked dot changes(onDotClicked), update indicator (dotNavigationClick) in the other file
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3, //3 pages
          effect: //the drag efect that shows when moving btwn pages
              //if dark context returns true here, use a warning color for demo else use handy color
              ExpandingDotsEffect(
                  activeDotColor: dark ? AColors.warning : AColors.handy,
                  dotHeight: 6),
        ));
  }
}
