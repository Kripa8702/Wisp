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
      this.padding = const EdgeInsets.symmetric(),
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        top: false,
        bottom: false,
        child: showGradient
            ? Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Positioned(
                    left: -50.w,
                    top: -50.h,
                    child: Container(
                      height: 250.h,
                      width: 250.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.green.withOpacity(0.7),
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: -120.w,
                    top: 100.h,
                    child: Container(
                      height: 300.h,
                      width: 300.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.blue.withOpacity(0.6),
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
                    filter: ImageFilter.blur(sigmaX: 150, sigmaY: 150),
                    child: Container(),
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
