// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tutorialapp/utils/constraints/colors.dart';
import 'package:tutorialapp/utils/device/device_utility.dart';

class ATabBar extends StatelessWidget implements PreferredSizeWidget {
  const ATabBar({
    super.key,
    required this.dark,
    required this.tabs,
  });

  final bool dark;
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: dark ? AColors.dark : AColors.light,
        child: TabBar(
          isScrollable: true,
          indicatorColor: AColors.primary,
          labelColor: dark ? AColors.white : AColors.black,
          unselectedLabelColor: AColors.darkGrey,
          tabAlignment: TabAlignment.center,
          tabs: tabs,
        ));
  }

  @override
  //implement preferredSize for the height of out tabBar so it has a stable app background color given above.
  Size get preferredSize => Size.fromHeight(ADeviceUtils.getAppBarHeight());
}
