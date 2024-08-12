import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wisp_app/features/auth/view/login_screen.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState());

  onInitialize(BuildContext context) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      // if (event.context.read<AuthRepository>().isSignedIn) {
      //   NavigatorService.pushNamedAndRemoveUntil(
      //     AppRoutes.landingPageScreen,
      //   );
      // } else {
      Navigator.push(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 1000),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
          pageBuilder: (context, __, ___) => LoginScreen.builder(context),
        ),
      );
      // }
    });
  }
}
