import 'package:flutter/material.dart';
import 'package:wisp_app/theme/app_colors.dart';
import 'package:wisp_app/utils/size_utils.dart';

/// Extension to provide styles to [ElevatedButton]
class CustomButtonStyle {


  static ButtonStyle get fillBlue => ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.w),
        ),
      );

  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: AppColors.gray5003,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.w),
        ),
      );

  // Outlined
  static ButtonStyle get outlinePrimary => ElevatedButton.styleFrom(
    backgroundColor: AppColors.primaryColor.withOpacity(1),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14.w),
    ),
  );

  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}

/// Extension to provide styles to [IconButton]
class IconButtonStyles {
  static BoxDecoration get fillGray => BoxDecoration(
    color: AppColors.gray5002,
    borderRadius: BorderRadius.circular(14.w),
  );
}

