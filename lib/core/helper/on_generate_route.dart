import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/authentication/presentation/views/login_view.dart';
import 'package:fruits_hub/Features/authentication/presentation/views/register_view.dart';
import 'package:fruits_hub/Features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_hub/Features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());

    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());

    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());

    case RegisterView.routeName:
      return MaterialPageRoute(builder: (context) => const RegisterView());

    default:
      return MaterialPageRoute(builder: (context) => const Placeholder());
  }
}
