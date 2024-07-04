import 'package:flutter/material.dart';
import 'package:wisp_app/theme/app_colors.dart';
import 'package:wisp_app/utils/size_utils.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillPrimary => const BoxDecoration(
        color: AppColors.primaryColor,
      );

  static BoxDecoration get fillSecondary => const BoxDecoration(
        color: AppColors.secondaryColor,
      );

  // Outline decorations
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: AppColors.primaryColor.withOpacity(1),
        border: Border.all(
          color: AppColors.primaryColor.withOpacity(1),
          width: 1.5,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder12 => BorderRadius.circular(
        12.w,
      );

  static BorderRadius get circleBorder24 => BorderRadius.circular(
        24.w,
      );

  static BorderRadius get circleBorder36 => BorderRadius.circular(
        36.w,
      );

  // Rounded borders
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.w,
      );

  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.w,
      );
}
