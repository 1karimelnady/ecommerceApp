import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../app_manager/local_data.dart';
import '../../../common_widget/circular_icon.dart';
import '../../../utilites/device/device_utility.dart';
class ProductQuantity extends StatelessWidget {
  const ProductQuantity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: 16,
          onPressed: () {},
          color: DeviceUtils.isDarkMode(context) ? white : black,
          backgroundColor:
          DeviceUtils.isDarkMode(context) ? darkerGrey : lightColor,
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          width: 16,
        ),
        CircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: 16,
          onPressed: () {},
          color: DeviceUtils.isDarkMode(context) ? white : black,
          backgroundColor: primaryColor,
        ),
      ],
    );
  }
}