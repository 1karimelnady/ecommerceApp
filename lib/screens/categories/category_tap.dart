import 'package:ecommerce_app/screens/home/widget/product_card_vertical.dart';
import 'package:ecommerce_app/screens/home/widget/section_heading.dart';
import 'package:flutter/material.dart';

import '../brand/brand_show_case.dart';
import '../home/widget/gird_layout.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            children: [
              BrandShowCase(
                images: [
                  'assets/images/push-pin.png',
                  'assets/images/push-pin.png',
                  'assets/images/push-pin.png',
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SectionHeading(
          title: 'You might like',
          textPressed: () {},
        ),
        const SizedBox(
          height: 16,
        ),
        GirdLayout(
          itemCount: 4,
          itemBuilder: (context, index) {
            return const ProductCardVertical();
          },
        )
      ],
    );
  }
}
