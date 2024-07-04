import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wisp_app/constants/assets_constants.dart';
import 'package:wisp_app/features/splash/bloc/splash_bloc.dart';
import 'package:wisp_app/features/widgets/custom_image_view.dart';
import 'package:wisp_app/theme/app_colors.dart';
import 'package:wisp_app/utils/size_utils.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) => SplashBloc()
        ..add(
          SplashInitial(context),
        ),
      child: const SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.darkBlue,
          body: SafeArea(
            bottom: false,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                            height: 180.h,
                            width: 180.w,
                          ),
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: AssetsPath.appNameLogo,
                    height: 60.h,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
