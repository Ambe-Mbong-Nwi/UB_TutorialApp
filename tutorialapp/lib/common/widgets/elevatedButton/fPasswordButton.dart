// ignore_for_file: unused_import, file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:tutorialapp/utils/constraints/text_strings.dart';
import 'package:tutorialapp/utils/device/device_utility.dart';

class buttonWithMeasuredBottomHeight extends StatelessWidget {
  const buttonWithMeasuredBottomHeight({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: ADeviceUtils.getBottomNavigationBarHeight() + 25,
        child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {},
                //onPressed: () => Get.to(() => const buyerNavigation()),
                child: Text(text))));
  }
}
