import 'package:ecommerce_app/app_manager/local_data.dart';
import 'package:ecommerce_app/common_widget/rounded_container.dart';
import 'package:ecommerce_app/screens/rating_reviews/widgets/rating_bar_indicator.dart';
import 'package:ecommerce_app/utilites/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserCardReview extends StatelessWidget {
  const UserCardReview({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = DeviceUtils.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/user-128.png"),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Karim Elnady',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(
              width: 16,
            ),
            Text(
              '01 Sep, 2001',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const ReadMoreText(
          'The user interface of the app is quite intuitive i was able to navigate and make purchases seamlessy. Great job! ',
          trimMode: TrimMode.Line,
          trimLines: 1,
          trimCollapsedText: 'Show more',
          trimExpandedText: 'Show less',
          moreStyle: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w800, color: primaryColor),
          lessStyle: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w800, color: primaryColor),
        ),
        const SizedBox(
          height: 16,
        ),
        RoundedContainer(
            backgroundColor: isDark ? darkerGrey : grey,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'T\'s Store',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text('02 Nov, 2023',
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const ReadMoreText(
                    'The user interface of the app is quite intuitive i was able to navigate and make purchases seamlessy. Great job! ',
                    trimMode: TrimMode.Line,
                    trimLines: 1,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: primaryColor),
                    lessStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: primaryColor),
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
