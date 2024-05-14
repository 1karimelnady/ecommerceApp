import 'package:ecommerce_app/app_manager/routes_manager.dart';
import 'package:ecommerce_app/common_widget/custom_appbar.dart';
import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/screens/home/widget/product_card_vertical.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../home/widget/gird_layout.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Favourites'),
        actions: [
          IconButton(
              onPressed: () {
                RoutesManager.navigatorPush(context, HomeScreen());
              },
              icon: Icon(Iconsax.add))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              GirdLayout(
                itemCount: 8,
                itemBuilder: (context, index) => ProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
