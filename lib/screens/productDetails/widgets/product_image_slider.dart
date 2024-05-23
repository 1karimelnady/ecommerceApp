import 'package:ecommerce_app/utilites/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../app_manager/local_data.dart';
import '../../../common_widget/circular_icon.dart';
import '../../../common_widget/custom_appbar.dart';
import '../../home/widget/circular_image.dart';
import '../../home/widget/curved_widget.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool dark = DeviceUtils.isDarkMode(context);
    return CurvedWidget(
      child: Container(
        color: dark ? darkerGrey : lightColor,
        child: Stack(
          children: [
            const SizedBox(
              height: 300,
              child: Padding(
                padding: EdgeInsets.all(32.0),
                child: Center(
                  child: Image(
                    image:
                        AssetImage("assets/images/41S+9swCRBL._AC_SX522_.jpg"),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 30,
              left: 24,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => CircularImage(
                          imageUrl: "images/41S+9swCRBL._AC_SX522_.jpg",
                          backgroundColor: dark ? darkColor : white,
                          padding: const EdgeInsets.all(8),
                          width: 80,
                          border: Border.all(color: primaryColor),
                        ),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 16,
                        ),
                    itemCount: 8),
              ),
            ),
            CustomAppBar(
              showBackArrow: true,
              actions: [
                CircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
