import 'package:ecommerce_app/common_widget/custom_appbar.dart';
import 'package:ecommerce_app/screens/orders/widgets/order_items.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          'My orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: orderListItem(),
      ),
    );
  }
}
