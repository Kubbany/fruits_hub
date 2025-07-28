import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/authentication/presentation/views/login_view.dart';
import 'package:fruits_hub/Features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/services/prefs.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/widgets/custom_button.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;

  var currentPage = 0;
  @override
  initState() {
    super.initState();

    pageController = PageController();
    pageController.addListener(
      () {
        setState(
          () {
            currentPage = pageController.page!.round();
          },
        );
      },
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: OnBoardingPageView(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: currentPage == 1 ? AppColors.primaryColor : AppColors.primaryColor.withAlpha(127),
          ),
        ),
        const SizedBox(
          height: 29,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: currentPage == 1 ? true : false,
            child: CustomButton(
              title: 'ابدأ الان',
              onPressed: () {
                Prefs.setBool(kSkipOnBoarding, true);
                Navigator.of(context).pushReplacementNamed(LoginView.routeName);
              },
              borderRadius: 16,
              backgroundColor: AppColors.primaryColor,
              buttonHeight: 54,
            ),
          ),
        ),
        const SizedBox(
          height: 43,
        ),
      ],
    );
  }
}
