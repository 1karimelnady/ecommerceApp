import 'package:ecommerce_app/app_manager/routes_manager.dart';
import 'package:ecommerce_app/screens/AuthScreen/Register/widgets/terms_and_conditions_checkbox.dart';
import 'package:ecommerce_app/utilites/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../app_manager/local_data.dart';
import '../verfiy_email.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool dark = DeviceUtils.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    labelStyle: TextStyle(
                        color: DeviceUtils.isDarkMode(context) ? white : black),
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    labelStyle: TextStyle(
                        color: DeviceUtils.isDarkMode(context) ? white : black),
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: 'username',
              prefixIcon: Icon(Iconsax.user1),
              labelStyle: TextStyle(
                  color: DeviceUtils.isDarkMode(context) ? white : black),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: 'E-mail',
              labelStyle: TextStyle(
                  color: DeviceUtils.isDarkMode(context) ? white : black),
              prefixIcon: const Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: 'Phone Number',
              prefixIcon: Icon(Iconsax.call),
              labelStyle: TextStyle(
                  color: DeviceUtils.isDarkMode(context) ? white : black),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: 'Password',
              labelStyle: TextStyle(
                  color: DeviceUtils.isDarkMode(context) ? white : black),
              suffixIcon: Icon(Iconsax.eye_slash),
              prefixIcon: Icon(Iconsax.password_check),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const TermsAndConditionsCheckbox(),
          const SizedBox(
            height: 32,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                RoutesManager.navigatorAndRemove(context, VerifyEmailScreen());
              },
              child: const Text('Create Account'),
            ),
          ),
        ],
      ),
    );
  }
}
