import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wisp_app/theme/app_colors.dart';
import 'package:wisp_app/utils/size_utils.dart';

class BaseScreen extends StatelessWidget {
  final Widget child;
  final bool showGradient;
  final EdgeInsetsGeometry? padding;

  const BaseScreen(
      {super.key,
      required this.child,
      this.showGradient = false,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: false,
        bottom: false,
        child: showGradient
            ? Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Positioned(
                  left: 0.w,
                  bottom: 0.h,
                  child: Container(
                    height: 300.h,
                    width: 300.w,
                    decoration: const BoxDecoration(
                      gradient: AppColors.onboardingGradient,
                    ),
                  ),
                ),
                Positioned(
                  left: 70.w,
                  bottom: 100.h,
                  child: Container(
                    height: 250.h,
                    width: 250.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.lightBlue,
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 70, sigmaY: 70),
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  padding: padding,
                  child: child,
                ),
              ],
            )
            : child,
      ),
    );
  }
}
