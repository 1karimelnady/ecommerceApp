import 'package:ecommerce_app/app_manager/local_data.dart';
import 'package:ecommerce_app/common_widget/circular_icon.dart';
import 'package:ecommerce_app/utilites/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = DeviceUtils.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
          color: isDark ? darkerGrey : lightColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircularIcon(
                icon: Iconsax.minus,
                width: 40,
                onPressed: () {},
                height: 40,
                backgroundColor: darkGrey,
                color: Colors.white,
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
                width: 40,
                onPressed: () {},
                height: 40,
                backgroundColor: Colors.black,
                color: Colors.white,
              ),
              const SizedBox(
                width: 111,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: black),
                      padding: const EdgeInsets.all(16),
                      backgroundColor: black),
                  onPressed: () {},
                  child: const Text('Add to Cart'))
            ],
          ),
        ],
      ),
    );
  }
}
