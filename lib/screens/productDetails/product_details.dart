import 'package:ecommerce_app/screens/productDetails/widgets/product_image_slider.dart';
import 'package:ecommerce_app/screens/productDetails/widgets/rating_share.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductImageSlider(),
            Padding(
              padding: EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0),
              child: Column(
                children: [
                  RatingAndShare(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
