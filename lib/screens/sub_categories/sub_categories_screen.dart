import 'package:ecommerce_app/common_widget/custom_appbar.dart';
import 'package:ecommerce_app/screens/home/widget/product_card_horizontal.dart';
import 'package:ecommerce_app/screens/home/widget/rounded_image.dart';
import 'package:ecommerce_app/screens/home/widget/section_heading.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          'Sports',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              RoundedImage(
                imageUrl: 'assets/images/images3.jpg',
                applyImageRadius: true,
                width: double.infinity,
              ),
              const SizedBox(
                height: 32,
              ),
              Column(
                children: [
                  SectionHeading(
                    title: 'Sports Shirts',
                    textPressed: () {},
                    showActionButton: true,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => const ProductCardHorizontal(),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 16,
                      ),
                      itemCount: 4,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
