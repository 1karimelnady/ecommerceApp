import 'package:ecommerce_app/common_widget/rounded_container.dart';
import 'package:ecommerce_app/screens/home/widget/circular_image.dart';
import 'package:ecommerce_app/utilites/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../app_manager/local_data.dart';
import '../home/widget/brand_title_verified_icon.dart';
import '../../common_widget/enums.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({super.key, required this.showBorder, this.onTap});
  final bool showBorder;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    bool isDark = DeviceUtils.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
          backgroundColor: Colors.transparent,
          showBorder: showBorder,
          padding: const EdgeInsets.all(8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: CircularImage(
                  isNetworkImage: false,
                  backgroundColor: Colors.transparent,
                  overlayColor: isDark ? white : black,
                  imageUrl: 'assets/images/push-pin.png',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BrandTitleVerifiedIcon(
                      title: 'Nike',
                      brandTextSizes: TextSizes.large,
                    ),
                    Text(
                      '256 product',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
