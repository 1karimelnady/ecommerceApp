import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../app_manager/local_data.dart';

class TRatingBarIndicator extends StatelessWidget {
  const TRatingBarIndicator({
    super.key,
    required this.rating,
  });
  final double rating;
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
        unratedColor: grey,
        rating: rating,
        itemSize: 20,
        itemBuilder: (context, index) => Icon(
              Iconsax.star1,
              color: primaryColor,
            ));
  }
}
