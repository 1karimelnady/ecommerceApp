import 'package:ecommerce_app/app_manager/local_data.dart';
import 'package:ecommerce_app/common_widget/rounded_container.dart';
import 'package:ecommerce_app/screens/home/widget/section_heading.dart';
import 'package:ecommerce_app/utilites/device/device_utility.dart';
import 'package:flutter/material.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = DeviceUtils.isDarkMode(context);
    return Column(
      children: [
        SectionHeading(
          title: 'Payment Methods',
          textPressed: () {},
          bodyTitle: 'Change',
        ),
        Row(
          children: [
            RoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: isDark ? lightColor : white,
              padding: const EdgeInsets.all(8),
              child: const Image(
                image: AssetImage('assets/images/paypal.png'),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              'PayPal',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ],
    );
  }
}
