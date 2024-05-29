import 'package:ecommerce_app/common_widget/custom_appbar.dart';
import 'package:ecommerce_app/screens/rating_reviews/widgets/overall_rating_product.dart';
import 'package:ecommerce_app/screens/rating_reviews/widgets/rating_bar_indicator.dart';
import 'package:ecommerce_app/screens/rating_reviews/widgets/use_card_review.dart';
import 'package:flutter/material.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
                'Rating and Review are verified and are from people who use the same type of device that you use.'),
            const SizedBox(
              height: 16,
            ),
            const OverallProductRating(),
            const TRatingBarIndicator(
              rating: 3.5,
            ),
            Text(
              '12,611',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: 32,
            ),
            const UserCardReview()
          ]),
        ),
      ),
    );
  }
}
