import 'package:ecommerce_app/app_manager/local_data.dart';
import 'package:ecommerce_app/common_widget/enums.dart';
import 'package:ecommerce_app/common_widget/rounded_container.dart';
import 'package:ecommerce_app/screens/home/widget/brand_title_verified_icon.dart';
import 'package:ecommerce_app/screens/home/widget/circular_image.dart';
import 'package:ecommerce_app/screens/productDetails/widgets/price_text.dart';
import 'package:ecommerce_app/screens/productDetails/widgets/title_text.dart';
import 'package:ecommerce_app/utilites/device/device_utility.dart';
import 'package:flutter/material.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = DeviceUtils.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            RoundedContainer(
              radius: 5,
              backgroundColor: secondaryColor.withOpacity(0.8),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: Colors.black),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              '250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            SizedBox(
              width: 16,
            ),
            PriceText(
              price: '175',
              isLarge: true,
            )
          ],
        ),
        SizedBox(
          height: 16 / 1.5,
        ),
        TitleText(
          title: 'Green Nike Sports Shirt',
          textAlign: TextAlign.left,
        ),
        SizedBox(
          height: 16 / 1.5,
        ),
        Row(
          children: [
            TitleText(title: 'status'),
            SizedBox(
              width: 16,
            ),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        SizedBox(
          height: 16 / 1.5,
        ),
        Row(
          children: [
            CircularImage(
              imageUrl: 'images/icons8-shoes-50.png',
              width: 32,
              height: 32,
              overlayColor: isDark ? white : black,
            ),
            SizedBox(
              width: 8,
            ),
            BrandTitleVerifiedIcon(
              title: 'Nike',
              brandTextSizes: TextSizes.medium,
            )
          ],
        ),
      ],
    );
  }
}
