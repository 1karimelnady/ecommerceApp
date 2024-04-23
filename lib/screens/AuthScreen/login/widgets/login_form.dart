import 'package:ecommerce_app/app_manager/routes_manager.dart';
import 'package:ecommerce_app/screens/AuthScreen/Register/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../forget_password.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'E-mail',
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Password',
                suffixIcon: Icon(Iconsax.eye_slash),
                prefixIcon: Icon(Iconsax.password_check),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text('Remember Me'),
                  ],
                ),
                TextButton(
                  child: const Text('forget password?'),
                  onPressed: () {
                    RoutesManager.navigatorPush(
                        context, const ForgetPasswordScreen());
                  },
                )
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Sign in'),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  RoutesManager.navigatorPush(context, const RegisterScreen());
                },
                child: const Text('Create Account '),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
