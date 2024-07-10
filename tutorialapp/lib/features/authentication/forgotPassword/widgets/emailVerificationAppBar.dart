// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:tutorialapp/common/widgets/appBar/appBar.dart';
import 'package:tutorialapp/utils/constraints/sizes.dart';
import 'package:tutorialapp/utils/constraints/text_strings.dart';

class emailVerificationAppBar extends StatelessWidget {
  const emailVerificationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AAppBar(

        //appbar title
        title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(ATexts.forgotPassword2,
            style: Theme.of(context).textTheme.headlineSmall!),
        const SizedBox(
          width: ASizes.sm,
        ),
      ],
    ));
  }
}
