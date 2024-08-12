import 'package:flutter/material.dart';
import 'package:wisp_app/theme/app_colors.dart';
import 'package:wisp_app/theme/custom_text_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.onPressed, required this.text,
  this.textColor = Colors.white
  });

  final VoidCallback? onPressed;
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(AppColors.buttonColor1.withOpacity(0.1)),
        padding: MaterialStateProperty.all(EdgeInsets.zero),
      ),
      child: Text(
        text,
        style: CustomTextStyles.bodySmall.copyWith(
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
      ),
    );
  }
}
