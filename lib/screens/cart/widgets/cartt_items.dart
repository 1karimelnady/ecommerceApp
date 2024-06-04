import 'package:ecommerce_app/screens/cart/widgets/product_quantity.dart';
import 'package:flutter/material.dart';

import '../../productDetails/widgets/price_text.dart';
import 'cart_item.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key, this.showAddRemoveButtons = true});
  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const CartItem(),
              if (showAddRemoveButtons)
                const SizedBox(
                  height: 16,
                ),
              if (showAddRemoveButtons)
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 70,
                        ),
                        ProductQuantity(),
                      ],
                    ),
                    PriceText(price: '256', isLarge: false)
                  ],
                ),
            ],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 32,
          );
        },
        itemCount: 2);
  }
}
