import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wisp_app/features/onboarding/view/onboarding_screen.dart';
import 'package:wisp_app/routing/app_routes.dart';
import 'package:wisp_app/services/navigator_service.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState()) {
    on<SplashInitial>(_onInitialize);
  }

  _onInitialize(
    SplashInitial event,
    Emitter<SplashState> emit,
  ) async {

    Future.delayed(const Duration(milliseconds: 3000), () {
      // if (event.context.read<AuthRepository>().isSignedIn) {
      //   NavigatorService.pushNamedAndRemoveUntil(
      //     AppRoutes.landingPageScreen,
      //   );
      // } else {
      Navigator.push(
        event.context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 1000),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
          pageBuilder: (context, __, ___) => OnBoardingScreen.builder(context),
        ),
      );
      // }
    });
  }
}
