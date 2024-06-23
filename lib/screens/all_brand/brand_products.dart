import 'package:ecommerce_app/common_widget/custom_appbar.dart';
import 'package:ecommerce_app/screens/all_product/widgets/sortable_products.dart';
import 'package:ecommerce_app/screens/brand/brand_card.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: Text('Nike'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              BrandCard(
                showBorder: true,
              ),
              SizedBox(
                height: 32,
              ),
              SortableProducts()
            ],
          ),
        ),
      ),
    );
  }
}
