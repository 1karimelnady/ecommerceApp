import 'package:ecommerce_app/app_manager/routes_manager.dart';
import 'package:ecommerce_app/common_widget/custom_appbar.dart';
import 'package:ecommerce_app/screens/all_brand/brand_products.dart';
import 'package:ecommerce_app/screens/brand/brand_card.dart';
import 'package:ecommerce_app/screens/home/widget/gird_layout.dart';
import 'package:ecommerce_app/screens/home/widget/section_heading.dart';
import 'package:flutter/material.dart';

class AllBrandScreen extends StatelessWidget {
  const AllBrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          'Brand',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SectionHeading(
                title: 'Brands',
                showActionButton: false,
              ),
              const SizedBox(
                height: 16,
              ),
              GirdLayout(
                  itemCount: 8,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) => BrandCard(
                        showBorder: true,
                        onTap: () {
                          RoutesManager.navigatorPush(
                              context, const BrandProducts());
                        },
                      )),
            ],
          ),
        ),
      ),
    );
  }
}
