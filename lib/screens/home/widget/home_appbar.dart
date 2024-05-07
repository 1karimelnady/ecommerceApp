import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../app_manager/local_data.dart';
import '../../../common_widget/cart_counter.dart';
import '../../../common_widget/custom_appbar.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Good day for shopping",
              style:
                  Theme.of(context).textTheme.labelLarge!.apply(color: grey)),
          Text("Karim Elnady",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: Colors.white)),
        ],
      ),
      showBackArrow: false,
      leadingIcon: Iconsax.arrow_left,
      leadingPressed: () {},
      actions: [
        CartCounter(
          iconPressed: () {},
          iconColor: Colors.white,
        ),
      ],
    );
  }
}
