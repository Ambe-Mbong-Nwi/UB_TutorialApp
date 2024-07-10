// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:tutorialapp/utils/constraints/sizes.dart';
import 'package:tutorialapp/utils/constraints/text_strings.dart';

class forgotPasswordHeader extends StatelessWidget {
  const forgotPasswordHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(
            vertical: ASizes.appBarHeight * 1.8, horizontal: ASizes.lg),
        child: Row(
          //wrap with row so it occupies entire screen width
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ATexts.fPassTitle,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto',
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(ATexts.fPassSubTitle,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left),
              ],
            ),
          ],
        ));
  }
}
