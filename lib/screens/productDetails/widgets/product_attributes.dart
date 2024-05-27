import 'package:ecommerce_app/app_manager/local_data.dart';
import 'package:ecommerce_app/common_widget/rounded_container.dart';
import 'package:ecommerce_app/screens/home/widget/section_heading.dart';
import 'package:ecommerce_app/screens/productDetails/widgets/price_text.dart';
import 'package:ecommerce_app/screens/productDetails/widgets/title_text.dart';
import 'package:ecommerce_app/utilites/device/device_utility.dart';
import 'package:flutter/material.dart';

import 'choice_chip.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = DeviceUtils.isDarkMode(context);
    return Column(
      children: [
        RoundedContainer(
          padding: EdgeInsets.all(16),
          backgroundColor: isDark ? darkerGrey : grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          TitleText(
                            title: 'price : ',
                            smallSize: true,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          PriceText(price: "20", isLarge: false),
                        ],
                      ),
                      Row(
                        children: [
                          TitleText(
                            title: 'stock : ',
                            smallSize: true,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              TitleText(
                title: 'This is the description of this product',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeading(
              title: 'Colors',
              showActionButton: false,
            ),
            SizedBox(
              height: 8,
            ),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                  select: true,
                  onSelected: (value) {},
                  text: 'Green',
                ),
                TChoiceChip(
                  select: false,
                  onSelected: (value) {},
                  text: 'Blue',
                ),
                TChoiceChip(
                  select: false,
                  onSelected: (value) {},
                  text: 'Red',
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeading(
              title: 'Sizes',
              showActionButton: false,
            ),
            SizedBox(
              height: 8,
            ),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                  select: true,
                  onSelected: (value) {},
                  text: 'EU 34',
                ),
                TChoiceChip(
                  select: false,
                  onSelected: (value) {},
                  text: 'EU 36',
                ),
                TChoiceChip(
                  select: false,
                  onSelected: (value) {},
                  text: 'EU 38',
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
