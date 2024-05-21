import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/screens/home/widget/rounded_image.dart';
import 'package:flutter/material.dart';

import '../../../app_manager/local_data.dart';
import '../../../cubit/main_cubit.dart';
import 'ciricular_container.dart';

class CarouselSliders extends StatelessWidget {
  const CarouselSliders({
    super.key,
    required this.images,
  });

  final List images;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged: (index, reason) =>
                    MainCubit.get(context).updateCarousel(index)),
            items: images
                .map((url) => RoundedImage(
                      imageUrl: url,
                    ))
                .toList()),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (int i = 0; i < images.length; i++)
              CiricularContainer(
                width: 18,
                height: 4,
                margin: const EdgeInsets.only(right: 10),
                backgroundColor:
                    MainCubit.get(context).currentCarouselIndex == i
                        ? primaryColor
                        : grey,
                radius: 0,
              ),
          ],
        ),
      ],
    );
  }
}
