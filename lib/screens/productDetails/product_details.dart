import 'package:ecommerce_app/app_manager/local_data.dart';
import 'package:ecommerce_app/app_manager/routes_manager.dart';
import 'package:ecommerce_app/screens/home/widget/section_heading.dart';
import 'package:ecommerce_app/screens/productDetails/widgets/bottom_add_to_cart.dart';
import 'package:ecommerce_app/screens/productDetails/widgets/product_attributes.dart';
import 'package:ecommerce_app/screens/productDetails/widgets/product_image_slider.dart';
import 'package:ecommerce_app/screens/productDetails/widgets/product_meta_data.dart';
import 'package:ecommerce_app/screens/productDetails/widgets/rating_share.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../rating_reviews/rating_and_reviews.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductImageSlider(),
            Padding(
              padding: EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0),
              child: Column(
                children: [
                  RatingAndShare(),
                  ProductMetaData(),
                  SizedBox(
                    height: 8,
                  ),
                  ProductAttributes(),
                  SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Checkout'))),
                  SizedBox(
                    height: 16,
                  ),
                  SectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ReadMoreText(
                    'This is the Product Description for Blue Nike Sleeve less vest. '
                    'There are more things that can be added but i am just practicing and nothing else ,thanks',
                    trimMode: TrimMode.Line,
                    trimLines: 2,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  Divider(),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SectionHeading(
                        title: 'Reviews (199)',
                        showActionButton: false,
                        textPressed: () {},
                      ),
                      IconButton(
                          onPressed: () {
                            RoutesManager.navigatorPush(
                                context, ReviewsScreen());
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 18,
                            // color: Colors.red,
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
