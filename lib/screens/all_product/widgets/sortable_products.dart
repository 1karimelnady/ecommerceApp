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
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map((option) => DropdownMenuItem(
                    child: Text(option),
                    value: option,
                  ))
              .toList(),
          onChanged: (value) {},
        ),
        SizedBox(
          height: 32,
        ),
        GirdLayout(
          itemCount: 8,
          itemBuilder: (BuildContext, int) => ProductCardVertical(),
        )
      ],
    );
  }
}
