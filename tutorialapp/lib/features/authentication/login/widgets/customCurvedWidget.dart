// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:tutorialapp/common/widgets/custom_shapes/containers/circularContainer.dart';
import 'package:tutorialapp/common/widgets/custom_shapes/curved_edges/curvedEdgeWidget2.dart';
import 'package:tutorialapp/utils/constraints/colors.dart';

class customCurvedEdgeWidget extends StatelessWidget {
  const customCurvedEdgeWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BCustomCurvedEdgeWidget(
      child: Container(
          color: AColors.primaryHover,
          padding: const EdgeInsets.all(0),
          child: Stack(
            children: [
              //circular containers: custom shapes
              Positioned(
                top: 30,
                left: -120,
                child: ACircularContainer(
                  backgroundColor: AColors.white.withOpacity(0.05),
                ),
              ),
              Positioned(
                top: 0,
                left: -280,
                child: ACircularContainer(
                  backgroundColor: AColors.white.withOpacity(0.05),
                ),
              ),
              Positioned(
                top: 50,
                right: 300,
                child: ACircularContainer(
                  backgroundColor: AColors.white.withOpacity(0.05),
                ),
              ),
              child, //
            ],
          )),
    );
  }
}
