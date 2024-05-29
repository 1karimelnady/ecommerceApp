import 'package:ecommerce_app/app_manager/local_data.dart';
import 'package:ecommerce_app/app_manager/routes_manager.dart';
import 'package:ecommerce_app/common_widget/custom_appbar.dart';
import 'package:ecommerce_app/screens/addresses/add_new_address_screen.dart';
import 'package:ecommerce_app/screens/addresses/widgets/single_address.dart';
import 'package:ecommerce_app/utilites/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = DeviceUtils.isDarkMode(context);
    final bool selectedAddress;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          RoutesManager.navigatorPush(context, const AddNewAddress());
        },
        backgroundColor: primaryColor,
        child: const Icon(
          Iconsax.add,
          color: white,
        ),
      ),
      appBar: CustomAppBar(
        title:
            Text('Addresses', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SingleAddress(selectedAddress: true),
              SingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
