import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wisp_app/constants/assets_constants.dart';
import 'package:wisp_app/features/splash/cubit/splash_cubit.dart';
import 'package:wisp_app/features/widgets/custom_image_view.dart';
import 'package:wisp_app/utils/size_utils.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashCubit>(
      create: (context) => SplashCubit()
        ..onInitialize(context),
      child: const SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashCubit, SplashState>(
      builder: (context, state) {
        return Scaffold(
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
