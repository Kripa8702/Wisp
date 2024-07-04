import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wisp_app/constants/assets_constants.dart';
import 'package:wisp_app/features/widgets/base_screen.dart';
import 'package:wisp_app/features/widgets/custom_image_view.dart';
import 'package:wisp_app/theme/app_colors.dart';
import 'package:wisp_app/theme/custom_text_styles.dart';
import 'package:wisp_app/utils/size_utils.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  static Widget builder(BuildContext context) {
    return const OnBoardingScreen();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      showGradient: true,
      padding: EdgeInsets.symmetric(vertical: 200.h, horizontal: 50.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: 'logo',
                child: Material(
                  type: MaterialType.transparency,
                  child: UnconstrainedBox(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.w),
                      child: CustomImageView(
                        imagePath: AssetsPath.appLogo,
                        height: 60.h,
                        width: 60.w,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Text(
                'Welcome to Wisp',
                style: CustomTextStyles.headlineMedium.copyWith(
                  color: AppColors.darkBlue,
                ),
              ),
              SizedBox(height: 15.h),
              Text(
                'From raindrops to rainstorms, stay ahead with Wisp. Your trusty weather companion.',
                style: CustomTextStyles.titleSmall.copyWith(
                  color: AppColors.darkLavender,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 65.h,
            width: 65.w,
            child: FloatingActionButton(
              onPressed: () {},
              shape: const CircleBorder(),
              backgroundColor: AppColors.darkLavender,
              child: const Icon(
                CupertinoIcons.right_chevron,
                size: 28,
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
