import 'package:ecommerce_app/screens/AuthScreen/Register/widgets/register_form.dart';
import 'package:ecommerce_app/screens/AuthScreen/login/widgets/form_divider.dart';
import 'package:ecommerce_app/screens/AuthScreen/login/widgets/social_button.dart';
import 'package:ecommerce_app/utilites/device/device_utility.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtils.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'let\'s create your account',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 32,
              ),
              const RegisterForm(),
              const SizedBox(
                height: 32,
              ),
              const FormDivider(dividerText: 'or sign up with'),
              const SizedBox(
                height: 32,
              ),
              const SocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
