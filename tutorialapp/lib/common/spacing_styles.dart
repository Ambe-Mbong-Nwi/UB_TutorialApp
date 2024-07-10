import 'package:flutter/material.dart';
import 'package:tutorialapp/utils/constraints/sizes.dart';

class ASpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: ASizes.appBarHeight,
    left: ASizes.defaultSpace,
    right: ASizes.defaultSpace,
    bottom: ASizes.defaultSpace,
  );
}
