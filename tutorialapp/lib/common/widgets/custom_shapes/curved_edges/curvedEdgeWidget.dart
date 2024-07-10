// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tutorialapp/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class ACustomCurvedEdgeWidget extends StatelessWidget {
  const ACustomCurvedEdgeWidget({
    super.key,
    this.child,
  });

//making widget reusable by using any child property.
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ACustomCurvedEdges(),
      child: child,
    );
  }
}
