import 'package:flutter/material.dart';
import 'package:fruits_hub/constants/assets.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/on_boarding_view.dart';
import 'package:svg_flutter/svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    _executeNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Align(
          alignment: AlignmentDirectional.topStart,
          child: SvgPicture.asset(
            Assets.imagesPlant,
          ),
        ),
        SvgPicture.asset(
          Assets.imagesLogo,
        ),
        SvgPicture.asset(
          Assets.imagesSplashBottom,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  void _executeNavigation() async {
    return Future.delayed(
      const Duration(milliseconds: 2500),
      () {
        if (mounted) {
          Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
        }
      },
    );
  }
}
