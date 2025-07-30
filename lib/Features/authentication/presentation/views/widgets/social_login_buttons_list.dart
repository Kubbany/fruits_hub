import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/authentication/presentation/views/widgets/social_login_button.dart';
import 'package:fruits_hub/core/utils/app_images.dart';

class SocialLoginButtonsList extends StatelessWidget {
  const SocialLoginButtonsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        SocialLoginButton(
          icon: Assets.imagesGoogleIcon,
          title: 'تسجيل بواسطة جوجل',
          onPressed: () {},
        ),
        SocialLoginButton(
          icon: Assets.imagesApplIcon,
          title: 'تسجيل بواسطة أبل',
          onPressed: () {},
        ),
        SocialLoginButton(
          icon: Assets.imagesFacebookIcon,
          title: 'تسجيل بواسطة فيسبوك',
          onPressed: () {},
        ),
      ],
    );
  }
}
