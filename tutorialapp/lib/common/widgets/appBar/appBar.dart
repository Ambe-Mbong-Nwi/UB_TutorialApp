// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tutorialapp/utils/constraints/sizes.dart';

class AAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AAppBar(
      {super.key,
      this.title,
      this.showBackArrow = false, //default value
      //this.leadingIcon,
      this.leading,
      this.actions,
      this.leadingOnPressed,
      this.centerTitle});

  //to make widget reusable, use properties instead with ? meaning optional. No required keyword above.
  final Widget? title;
  final bool showBackArrow;
  //final IconData? leadingIcon;
  final Widget? leading; //for the drawer nav
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: ASizes.md, vertical: 0.0),
      child: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: centerTitle,
        leading: leading,
        // leading: showBackArrow
        //     ? IconButton(
        //         onPressed: () => Get.back(),
        //         icon: const Icon(Iconsax.direct_left))
        //     : IconButton(
        //         onPressed: leadingOnPressed, icon: Icon(leadingIcon)),
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}


//if use wants to showBackArrow, show it else pass in their func and icon there