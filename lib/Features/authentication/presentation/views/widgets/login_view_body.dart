import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/widgets/custom_app_bar.dart';
import 'package:fruits_hub/core/utils/widgets/custom_password_form_field.dart';
import 'package:fruits_hub/core/utils/widgets/custom_text_form_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'تسجيل الدخول'),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 24),
                  CustomTextFormField(
                    hintText: 'البريد الإلكتروني',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 16),
                  CustomPasswordFormField(
                    hintText: 'كلمة المرور',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
