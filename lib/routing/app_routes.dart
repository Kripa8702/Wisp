import 'package:flutter/material.dart';
import 'package:wisp_app/features/onboarding/view/onboarding_screen.dart';
import 'package:wisp_app/features/splash/view/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onBoardingScreen = '/onboarding_screen';

  static const String weatherScreen = '/weather_screen';


  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        onBoardingScreen: OnBoardingScreen.builder,
        // loginOrSignupScreen: LoginOrSignupScreen.builder,
        // loginScreen: LoginScreen.builder,
        // landingPageScreen: LandingPageScreen.builder
      };
}

//on generate route


