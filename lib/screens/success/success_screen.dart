import 'package:ecommerce_app/utilites/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.onPressed});
  final String title;
  final String subtitle;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Lottie.asset(
                'assets/animations/Animation - 1717488465885.json', // Replace with your file's path
                width: DeviceUtils.getScreenWidth(context) *
                    0.8, // Adjust width and height as needed
                fit: BoxFit.cover,

                repeat: true,
                reverse: true,
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: onPressed, child: const Text('Continue')))
            ],
          ),
        ),
      ),
    );
  }
}
