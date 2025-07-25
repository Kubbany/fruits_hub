import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/authentication/presentation/views/login_view.dart';
import 'package:fruits_hub/Features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/services/prefs.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:svg_flutter/svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: SvgPicture.asset(Assets.imagesPlant),
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(Assets.imagesSplashBottom, fit: BoxFit.fill),
      ],
    );
  }

  void executeNavigation() {
    bool skipOnBoarding = Prefs.getBool(kSkipOnBoarding);
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (mounted) {
          if (skipOnBoarding) {
            Navigator.pushReplacementNamed(context, LoginView.routeName);
          } else {
            Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
          }
        }
      },
    );
  }
}
