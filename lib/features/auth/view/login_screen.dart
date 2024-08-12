import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wisp_app/features/widgets/base_screen.dart';
import 'package:wisp_app/features/widgets/custom_button.dart';
import 'package:wisp_app/features/widgets/custom_text_button.dart';
import 'package:wisp_app/features/widgets/custom_text_form_field.dart';
import 'package:wisp_app/theme/app_colors.dart';
import 'package:wisp_app/theme/custom_text_styles.dart';
import 'package:wisp_app/utils/size_utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static Widget builder(BuildContext context) {
    return const LoginScreen();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      showGradient: true,
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome back',
            style: CustomTextStyles.headlineMedium,
          ),
          Text(
            'Please enter required details to continue',
            style: CustomTextStyles.bodySmall.copyWith(
              color: AppColors.greyText,
              fontWeight: FontWeight.w700,
            ),
          ),
          25.h.heightBox,
          const CustomTextFormField(
            hintText: 'Email Address',
          ),
          20.h.heightBox,
          const CustomTextFormField(
            hintText: 'Password',
            obscureText: true,
          ),
          30.h.heightBox,
          CustomButton(
            text: 'Continue',
            onPressed: (){},
          ),
          5.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account? ',
                style: CustomTextStyles.bodySmall
              ),
              CustomTextButton(onPressed: (){}, text: 'Sign Up',),
            ],
          ),
        ],
      ),
    );
  }
}
