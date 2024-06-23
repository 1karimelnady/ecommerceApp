import 'package:ecommerce_app/screens/home/widget/rounded_image.dart';
import 'package:ecommerce_app/screens/productDetails/widgets/price_text.dart';
import 'package:ecommerce_app/screens/productDetails/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../app_manager/local_data.dart';
import '../../../common_widget/rounded_container.dart';
import '../../../utilites/device/device_utility.dart';
import 'brand_title_verified_icon.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final bool dark = DeviceUtils.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: dark ? darkerGrey : softGrey,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          RoundedContainer(
            height: 120,
            backgroundColor: dark ? darkColor : white,
            padding: const EdgeInsets.all(8),
            margin: EdgeInsets.zero,
            child: Stack(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: RoundedImage(
                      applyImageRadius: true,
                      imageUrl: 'assets/images/images3.jpg'),
                ),
                Positioned(
                  left: 5,
                  top: 5,
                  child: RoundedContainer(
                    backgroundColor: secondaryColor.withOpacity(0.8),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    margin: EdgeInsets.zero,
                    radius: 8,
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: Colors.black),
                    ),
                  ),
                ),
                Positioned(
                  right: 5,
                  top: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(120),
                      color: dark
                          ? Colors.black.withOpacity(0.9)
                          : Colors.white.withOpacity(0.9),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.heart5,
                        size: 24,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleText(
                        title: 'Green Nike Air Shoes',
                        smallSize: true,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      BrandTitleVerifiedIcon(
                        title: 'Nike',
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                          child: PriceText(price: '256.0', isLarge: false)),
                      Container(
                          decoration: const BoxDecoration(
                              color: darkColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomRight: Radius.circular(16),
                              )),
                          child: SizedBox(
                            width: 32 * 1.2,
                            height: 32 * 1.2,
                            child: Center(
                                child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Iconsax.add,
                                color: Colors.white,
                              ),
                            )),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
