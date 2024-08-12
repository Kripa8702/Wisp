import 'package:flutter/material.dart';
import 'package:wisp_app/features/auth/view/login_screen.dart';
import 'package:wisp_app/features/splash/view/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String weatherScreen = '/weather_screen';


  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        loginScreen: LoginScreen.builder,
        // loginOrSignupScreen: LoginOrSignupScreen.builder,
        // loginScreen: LoginScreen.builder,
        // landingPageScreen: LandingPageScreen.builder
      };
}

//on generate route


