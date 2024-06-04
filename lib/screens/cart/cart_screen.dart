import 'package:ecommerce_app/app_manager/routes_manager.dart';
import 'package:ecommerce_app/common_widget/custom_appbar.dart';
import 'package:ecommerce_app/screens/cart/widgets/cartt_items.dart';
import 'package:flutter/material.dart';

import '../checkout/checkout_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(24.0),
        child: CartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ElevatedButton(
          onPressed: () {
            RoutesManager.navigatorPush(context, const CheckOutScreen());
          },
          child: const Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
