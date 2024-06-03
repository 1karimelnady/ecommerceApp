import 'package:flutter/material.dart';

import '../../../app_manager/local_data.dart';
import '../../../utilites/device/device_utility.dart';
import '../../home/widget/brand_title_verified_icon.dart';
import '../../home/widget/rounded_image.dart';
import '../../productDetails/widgets/title_text.dart';
class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedImage(
          imageUrl: 'assets/images/icons8-shoes-50.png',
          padding: const EdgeInsets.all(8),
          width: 60,
          height: 60,
          applyImageRadius: true,
          backgroundColor:
          DeviceUtils.isDarkMode(context) ? darkerGrey : lightColor,
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleVerifiedIcon(title: 'Nike'),
              const Flexible(
                child: TitleText(
                  title: 'Black Sports Shoes ',
                  maxLines: 1,
                ),
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'color ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'Green ',
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: 'Size ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'UK 08 ',
                    style: Theme.of(context).textTheme.bodyLarge),
              ])),
            ],
          ),
        ),
      ],
    );
  }
}