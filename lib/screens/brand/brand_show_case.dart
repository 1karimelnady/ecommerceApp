import 'package:flutter/material.dart';

import '../../app_manager/local_data.dart';
import 'brand_card.dart';
import '../../common_widget/rounded_container.dart';
import '../../utilites/device/device_utility.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    super.key,
    required this.images,
  });
  final List images;
  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
        padding: const EdgeInsets.all(5),
        backgroundColor: Colors.transparent,
        borderColor: darkGrey,
        showBorder: true,
        margin: const EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            const BrandCard(showBorder: false),
            Row(
                children: images
                    .map((image) => brandTopProductImage(image, context))
                    .toList())
          ],
        ));
  }

  Widget brandTopProductImage(String image, BuildContext context) {
    return Expanded(
      child: RoundedContainer(
        height: 100,
        backgroundColor:
            DeviceUtils.isDarkMode(context) ? darkGrey : lightColor,
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.all(5),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
