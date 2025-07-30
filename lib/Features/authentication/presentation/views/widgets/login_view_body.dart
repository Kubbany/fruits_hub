import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/authentication/presentation/views/widgets/dont_have_account_prompt.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/widgets/custom_app_bar.dart';
import 'package:fruits_hub/core/utils/widgets/custom_button.dart';
import 'package:fruits_hub/core/utils/widgets/custom_password_form_field.dart';
import 'package:fruits_hub/core/utils/widgets/custom_text_form_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'تسجيل الدخول'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 24),
                  const CustomTextFormField(
                    hintText: 'البريد الإلكتروني',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 16),
                  const CustomPasswordFormField(
                    hintText: 'كلمة المرور',
                  ),
                  const SizedBox(height: 16),
                  const ForgotPassword(),
                  const SizedBox(height: 33),
                  CustomButton(
                    title: 'تسجيل دخول',
                    titleSize: 16,
                    onPressed: () {},
                    borderRadius: 12,
                    backgroundColor: AppColors.primaryColor,
                  ),
                  const SizedBox(height: 33),
                  const DontHaveAccountPrompt(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'نسيت كلمة المرور؟',
          style: TextStyles.semiBold13.copyWith(
            color: const Color(0xFF2D9F5D),
            height: 0.13,
          ),
        ),
      ),
    );
  }
}
