// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:tutorialapp/common/widgets/appBar/appBar.dart';
import 'package:tutorialapp/utils/constraints/sizes.dart';
import 'package:tutorialapp/utils/constraints/text_strings.dart';

class resetPasswordAppBar extends StatelessWidget {
  const resetPasswordAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AAppBar(

        //appbar title
        title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(ATexts.resetPassword,
                style: Theme.of(context).textTheme.headlineSmall!),
            const SizedBox(
              width: ASizes.sm,
            ),
          ],
        ),
      ],
    ));
  }
}
