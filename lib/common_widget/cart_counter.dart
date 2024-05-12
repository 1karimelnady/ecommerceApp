import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartCounter extends StatelessWidget {
  const CartCounter({
    super.key,
    required this.iconPressed,
    this.iconColor,
  });
  final VoidCallback iconPressed;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(100)),
            child: Center(
                child: Text(
              '2',
              style: Theme.of(context).textTheme.labelLarge!.apply(
                    color: Colors.white,
                    fontSizeFactor: 0.8,
                  ),
            )),
          ),
        ),
        IconButton(
            onPressed: iconPressed,
            icon: Icon(
              Iconsax.shopping_bag,
              color: iconColor,
            )),
      ],
    );
  }
}
