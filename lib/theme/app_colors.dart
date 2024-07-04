import 'dart:ui';

import 'package:flutter/cupertino.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF0D47A1);
  static const Color secondaryColor = Color(0xFF1565C0);
  static const Color primaryTextColor = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);

  // Gradient colors
  static const Color lightBlue = Color(0xFF8EE6FD);
  static const Color lavender = Color(0xFFDABCFF);
  static const Color darkLavender = Color(0xFF95a0df);
  static const Color pink = Color(0xFFF6B5CA);

  // Dark
  static const Color darkBlue = Color(0xFF323144);
  static const Color darkGray = Color(0xFF4A4A4A);

  // Gray
  static const Color gray50 = Color(0xFFF9F9F9);
  static const Color gray5001 = Color(0xFFF9FAFF);
  static const Color gray5002 = Color(0xFFF4FBF8);
  static const Color gray5003 = Color(0xFFF7F5FF);

  // Gradient
  static const LinearGradient onboardingGradient = LinearGradient(
    colors: [
      lightBlue,
      lavender,
      pink,
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    stops: [0.3, 0.55, 1.0],
  );
}
