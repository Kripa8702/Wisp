import 'package:flutter/material.dart';
import 'package:wisp_app/theme/app_colors.dart';
import 'package:wisp_app/utils/size_utils.dart';

class CustomTextStyles {
  static TextStyle bodyLarge = TextStyle(
    color: AppColors.primaryTextColor.withOpacity(0.4),
    fontSize: 18.fSize,
    fontWeight: FontWeight.w400,
  );
  static TextStyle bodyMedium = TextStyle(
    color: AppColors.primaryTextColor.withOpacity(1),
    fontSize: 14.fSize,
    fontWeight: FontWeight.w400,
  );
  static TextStyle bodySmall = TextStyle(
    color: AppColors.primaryTextColor.withOpacity(0.4),
    fontSize: 12.fSize,
    fontWeight: FontWeight.w400,
  );
  static TextStyle displaySmall = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: 28.fSize,
    fontWeight: FontWeight.w700,
  );
  static TextStyle headlineMedium = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: 28.fSize,
    fontWeight: FontWeight.w600,
  );
  static TextStyle labelLarge = TextStyle(
    color: AppColors.primaryTextColor.withOpacity(0.4),
    fontSize: 12.fSize,
    fontWeight: FontWeight.w500,
  );
  static TextStyle titleLarge = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: 20.fSize,
    fontWeight: FontWeight.w600,
  );
  static TextStyle titleMedium = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: 18.fSize,
    fontWeight: FontWeight.w600,
  );
  static TextStyle titleSmall = TextStyle(
    color: AppColors.primaryTextColor.withOpacity(0.4),
    fontSize: 14.fSize,
    fontWeight: FontWeight.w600,
  );
}
