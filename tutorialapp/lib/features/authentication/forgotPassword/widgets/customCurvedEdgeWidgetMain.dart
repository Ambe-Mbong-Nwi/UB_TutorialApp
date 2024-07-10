// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:tutorialapp/common/widgets/custom_shapes/curved_edges/curvedEdgeWidget.dart';
import 'package:tutorialapp/utils/constraints/colors.dart';
import 'package:tutorialapp/utils/constraints/sizes.dart';

class customCurvedEdgeWidgetMain extends StatelessWidget {
  const customCurvedEdgeWidgetMain({super.key});

  @override
  Widget build(BuildContext context) {
    return ACustomCurvedEdgeWidget(
      child: Container(
          color: AColors.primary,
          padding: const EdgeInsets.all(ASizes.appBarHeight / 1.5)),
    );
  }
}
