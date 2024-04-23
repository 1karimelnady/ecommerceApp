import 'package:ecommerce_app/screens/AuthScreen/login/widgets/form_divider.dart';
import 'package:ecommerce_app/screens/AuthScreen/login/widgets/login_form.dart';
import 'package:ecommerce_app/screens/AuthScreen/login/widgets/login_header.dart';
import 'package:ecommerce_app/screens/AuthScreen/login/widgets/social_button.dart';
import 'package:ecommerce_app/utilites/device/device_utility.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtils.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 56,
            left: 24,
            right: 24,
            bottom: 24,
          ),
          child: Column(
            children: [
              LoginHeader(dark: dark),
              const LoginForm(),
              const FormDivider(
                dividerText: 'sign in with',
              ),
              const SizedBox(
                height: 10,
              ),
              const SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
