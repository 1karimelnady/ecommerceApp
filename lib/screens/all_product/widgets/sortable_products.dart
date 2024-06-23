import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../home/widget/gird_layout.dart';
import '../../home/widget/product_card_vertical.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map((option) => DropdownMenuItem(
                    value: option,
                    child: Text(option),
                  ))
              .toList(),
          onChanged: (value) {},
        ),
        const SizedBox(
          height: 32,
        ),
        GirdLayout(
          itemCount: 8,
          itemBuilder: (BuildContext, int) => const ProductCardVertical(),
        )
      ],
    );
  }
}
