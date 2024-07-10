import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorialapp/utils/constraints/colors.dart';

class ACustomSnackBar {
  static void showErrorSnackBar({
    required BuildContext? context,
    required String title,
    required String message,
  }) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: AColors.error,
      titleText: Text(
        title,
        style: Theme.of(context!).textTheme.titleLarge!.copyWith(
            fontSize: 16, fontWeight: FontWeight.bold, color: AColors.white),
      ),
      messageText: Text(
        message,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
      ),
      colorText: AColors.white,
      borderRadius: 10,
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(8),
      icon: const Icon(
        Icons.error_outline,
        size: 40,
        color: AColors.white,
      ),
      shouldIconPulse: true,
      duration: const Duration(seconds: 4),
    );
  }

  static void showInfoSnackBar({
    required BuildContext? context,
    required String title,
    required String message,
  }) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: AColors.grey,
      titleText: Text(
        title,
        style: Theme.of(context!).textTheme.titleLarge!.copyWith(
            fontSize: 16, fontWeight: FontWeight.bold, color: AColors.white),
      ),
      messageText: Text(
        message,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
      ),
      colorText: AColors.white,
      borderRadius: 10,
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(8),
      icon: const Icon(
        Icons.error_outline,
        size: 40,
        color: AColors.white,
      ),
      shouldIconPulse: true,
      duration: const Duration(seconds: 4),
    );
  }

  static void showSuccessSnackBar({
    required BuildContext? context,
    required String title,
    required String message,
  }) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: AColors.success,
      titleText: Text(
        title,
        style: Theme.of(context!).textTheme.titleLarge!.copyWith(
            fontSize: 16, fontWeight: FontWeight.bold, color: AColors.white),
      ),
      messageText: Text(
        message,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
      ),
      colorText: AColors.white,
      borderRadius: 10,
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(8),
      icon: const Icon(
        Icons.error_outline,
        size: 40,
        color: AColors.white,
      ),
      shouldIconPulse: true,
      duration: const Duration(seconds: 4),
    );
  }
}
