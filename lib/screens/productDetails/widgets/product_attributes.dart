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
          padding: const EdgeInsets.all(16),
          backgroundColor: isDark ? darkerGrey : grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const SectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const TitleText(
                            title: 'price : ',
                            smallSize: true,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const PriceText(price: "20", isLarge: false),
                        ],
                      ),
                      Row(
                        children: [
                          const TitleText(
                            title: 'stock : ',
                            smallSize: true,
                          ),
                          const SizedBox(
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
              const TitleText(
                title: 'This is the description of this product',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(
              title: 'Colors',
              showActionButton: false,
            ),
            const SizedBox(
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
        const SizedBox(
          height: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(
              title: 'Sizes',
              showActionButton: false,
            ),
            const SizedBox(
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
