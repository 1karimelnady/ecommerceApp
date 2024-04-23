import 'package:flutter/material.dart';

import '../../../utilites/device/device_utility.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Image(
                width: DeviceUtils.getScreenWidth(context) * 0.6,
                image: const AssetImage("images/images.png"),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Password Reset Email Sent',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'karimelnady728@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Your Account Security is Our Priority we \'ve sent you a secure link to safety Change your password and keep your Account protected',
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 32,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Done'),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextButton(
                onPressed: () {},
                child: Text('Resend Email'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
