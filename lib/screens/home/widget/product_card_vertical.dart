import 'package:ecommerce_app/app_manager/routes_manager.dart';
import 'package:ecommerce_app/screens/home/widget/rounded_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../app_manager/local_data.dart';
import '../../../common_widget/rounded_container.dart';
import '../../../utilites/device/device_utility.dart';
import '../../productDetails/product_details.dart';
import 'brand_title_verified_icon.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final bool dark = DeviceUtils.isDarkMode(context);
    return GestureDetector(
      onTap: () => RoutesManager.navigatorPush(context, const ProductDetail()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: darkGrey.withOpacity(0.1),
              blurRadius: 50,
              spreadRadius: 7,
              offset: const Offset(0, 2),
            ),
          ],
          color: dark ? darkerGrey : Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            RoundedContainer(
              height: 180,
              backgroundColor: dark ? darkColor : lightColor,
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: Stack(
                children: [
                  RoundedImage(
                      applyImageRadius: true,
                      imageUrl: 'assets/images/images3.jpg'),
                  Positioned(
                    top: 12,
                    left: 5,
                    child: RoundedContainer(
                      backgroundColor: secondaryColor.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 5),
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
                    top: 5,
                    right: 10,
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
                          Icons.favorite,
                          size: 28,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Green Nike Air Shoes',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const BrandTitleVerifiedIcon(
                    title: 'Nike',
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$35.5',
                  style: Theme.of(context).textTheme.titleLarge,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
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
    );
  }
}
