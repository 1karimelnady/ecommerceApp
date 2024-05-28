import 'package:ecommerce_app/app_manager/local_data.dart';
import 'package:ecommerce_app/common_widget/custom_appbar.dart';
import 'package:ecommerce_app/screens/rating_reviews/widgets/overall_rating_product.dart';
import 'package:ecommerce_app/screens/rating_reviews/widgets/rating_bar_indicator.dart';
import 'package:ecommerce_app/screens/rating_reviews/widgets/rating_progress_indicator.dart';
import 'package:ecommerce_app/screens/rating_reviews/widgets/use_card_review.dart';
import 'package:ecommerce_app/utilites/device/device_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
                'Rating and Review are verified and are from people who use the same type of device that you use.'),
            SizedBox(
              height: 16,
            ),
            OverallProductRating(),
            TRatingBarIndicator(
              rating: 3.5,
            ),
            Text(
              '12,611',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(
              height: 32,
            ),
            UserCardReview()
          ]),
        ),
      ),
    );
  }
}
