import 'package:ecommerce_app/app_manager/local_data.dart';
import 'package:ecommerce_app/common_widget/custom_appbar.dart';
import 'package:ecommerce_app/common_widget/rounded_container.dart';
import 'package:ecommerce_app/navigation_menu.dart';
import 'package:ecommerce_app/screens/cart/widgets/cartt_items.dart';
import 'package:ecommerce_app/screens/checkout/widgets/billing_address_section.dart';
import 'package:ecommerce_app/screens/checkout/widgets/billing_amount_section.dart';
import 'package:ecommerce_app/screens/checkout/widgets/billing_payment_section.dart';
import 'package:ecommerce_app/screens/checkout/widgets/cupon_code.dart';
import 'package:ecommerce_app/utilites/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../app_manager/routes_manager.dart';
import '../success/success_screen.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = DeviceUtils.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const CartItems(
                showAddRemoveButtons: false,
              ),
              const SizedBox(
                height: 32,
              ),
              const CuponCode(),
              const SizedBox(
                height: 32,
              ),
              RoundedContainer(
                padding: const EdgeInsets.all(16),
                backgroundColor: isDark ? black : white,
                showBorder: true,
                child: const Column(
                  children: [
                    BillingAmountSection(),
                    Divider(),
                    SizedBox(
                      height: 8,
                    ),
                    BillingPaymentSection(),
                    SizedBox(
                      height: 8,
                    ),
                    BillingAddressSection()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ElevatedButton(
          onPressed: () {
            RoutesManager.navigatorPush(
                context,
                PaymentSuccessScreen(
                  title: 'Payment Successful',
                  subtitle: 'Your item will be shipped soon',
                  onPressed: () {
                    RoutesManager.navigatorPush(context, const NavigationMenu());
                  },
                ));
          },
          child: const Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
