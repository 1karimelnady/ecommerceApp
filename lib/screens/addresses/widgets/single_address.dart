import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../app_manager/local_data.dart';
import '../../../common_widget/rounded_container.dart';
import '../../../utilites/device/device_utility.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({
    super.key,
    required this.selectedAddress,
  });

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final bool isDark = DeviceUtils.isDarkMode(context);
    return RoundedContainer(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 16),
        showBorder: true,
        backgroundColor: selectedAddress
            ? primaryColor.withOpacity(0.4)
            : Colors.transparent,
        borderColor: selectedAddress
            ? Colors.transparent
            : isDark
                ? darkerGrey
                : grey,
        child: Stack(
          children: [
            Positioned(
              right: 5,
              top: 0,
              child: Icon(
                selectedAddress ? Iconsax.tick_circle5 : null,
                color: selectedAddress
                    ? isDark
                        ? lightColor
                        : darkColor
                    : null,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Karim Elnady',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  '(+20) 1030536167',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  '82356 Timmy Coves, South Liana, Maine, 87655, USA',
                  // maxLines: 1,
                  // overflow: TextOverflow.ellipsis,
                  softWrap: true,
                ),
                const SizedBox(
                  height: 4,
                ),
              ],
            )
          ],
        ));
  }
}
