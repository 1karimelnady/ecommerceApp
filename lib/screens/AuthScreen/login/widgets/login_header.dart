import 'package:ecommerce_app/utilites/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool dark = DeviceUtils.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Lottie.asset(
          'assets/animations/Animation - 1717491598441.json',
          width: DeviceUtils.getScreenWidth(context) * 0.8,
          height: DeviceUtils.getScreenHeight(context) * 0.2,
          repeat: true,
          reverse: true,
          fit: BoxFit.contain,
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          "Welcome Back",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "Discover limitless choices and unmatched convenience",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
