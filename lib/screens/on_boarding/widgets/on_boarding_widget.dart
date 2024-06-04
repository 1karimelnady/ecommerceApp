import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../utilites/device/device_utility.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
  });
  final String title;
  final String subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          // Image.asset(
          //   image,
          //   width: DeviceUtils.getScreenWidth(context) * 0.8,
          //   height: DeviceUtils.getScreenHeight(context) * 0.6,
          // ),
          Lottie.asset(
            image,
            width: DeviceUtils.getScreenWidth(context) * 0.8,
            height: DeviceUtils.getScreenHeight(context) * 0.6,
            repeat: true,
            reverse: true,
            fit: BoxFit.contain,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
