// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tutorialapp/common/widgets/custom_shapes/curved_edges/curved_edges2.dart';

class BCustomCurvedEdgeWidget extends StatelessWidget {
  const BCustomCurvedEdgeWidget({
    super.key,
    this.child,
  });

//making widget reusable by using any child property.
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BCustomCurvedEdges(),
      child: child,
    );
  }
}
