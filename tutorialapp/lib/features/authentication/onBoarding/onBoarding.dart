//designed the page layout in onboarding.dart, and used onboarding_controller class for all the controls.

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorialapp/features/authentication/controllersOnboarding/onBoardingController.dart';
import 'package:tutorialapp/features/authentication/onBoarding/widgets/onBoardingDotNavigation.dart';
import 'package:tutorialapp/features/authentication/onBoarding/widgets/onBoardingNextButton.dart';
import 'package:tutorialapp/features/authentication/onBoarding/widgets/onBoardingPage.dart';
import 'package:tutorialapp/features/authentication/onBoarding/widgets/onBoardingSkip.dart';
import 'package:tutorialapp/utils/constraints/image_strings.dart';
import 'package:tutorialapp/utils/constraints/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
//getting an instance of our onBoardingcontroller. The put below creates a new instance of the controller so no need to put new again
    final controller = Get.put(OnBoardingController());

    return Scaffold(
        body: Stack(children: [
      //to create horizontal scrollable pages, use PageView
      PageView(
          //passing in pageController already defined in onboarding_controller.dart to know which page is currently visible and how many pages we have.
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndator,
          children: const [
            OnBoardingPage(
                image: AImages.onBoardingImage1,
                title: ATexts.onBoardingTitle1,
                subTitle: ATexts.onBoardingSubTitle1),
            OnBoardingPage(
                image: AImages.onBoardingImage2,
                title: ATexts.onBoardingTitle2,
                subTitle: ATexts.onBoardingSubTitle2),
            OnBoardingPage(
                image: AImages.onBoardingImage3,
                title: ATexts.onBoardingTitle3,
                subTitle: ATexts.onBoardingSubTitle3)
          ]),

      //skip button
      const skipButton(),

      //dot navigation smoothpageindicator
      const onBoardingDotNavigation(),

      //circular button
      const onBoardingNextButton(),
    ]));
  }
}
