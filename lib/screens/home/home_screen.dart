import 'package:ecommerce_app/screens/home/widget/carouselsliders.dart';
import 'package:ecommerce_app/screens/home/widget/home_appbar.dart';
import 'package:ecommerce_app/screens/home/widget/primary_header_container.dart';
import 'package:ecommerce_app/screens/home/widget/product_card_vertical.dart';
import 'package:ecommerce_app/screens/home/widget/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import '../../common_widget/search_container.dart';
import '../../cubit/application_state/main_states.dart';
import '../../cubit/main_cubit.dart';
import '../categories/categories.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List images = [
    'images/images3.jpg',
    'images/images2.jpg',
    'images/shoes.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(),
      child: BlocConsumer<MainCubit, MainStates>(
        listener: (context, state) {},
        builder: (BuildContext context, MainStates state) {
          // var cubit = MainCubit.get(context);
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  PrimaryHeaderContainer(
                    child: Column(
                      children: [
                        const HomeAppBar(),
                        const SizedBox(
                          height: 32,
                        ),
                        const SearchContainer(
                          text: 'Search in store',
                          icon: Iconsax.search_normal,
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        const SectionHeading(
                          showActionButton: false,
                          textColor: Colors.white,
                          title: 'Popular Categories',
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Categories(
                          textColor: Colors.white,
                          title: 'show shoes',
                          image: 'images/icons8-shoes-50.png',
                          onTap: () {},
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      children: [
                        CarouselSliders(images: images),
                        const SizedBox(
                          height: 16,
                        ),
                        GridView.builder(
                            shrinkWrap: true,
                            itemCount: 4,
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisExtent: 288,
                                    mainAxisSpacing: 16,
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 16),
                            itemBuilder: (context, index) =>
                                const ProductCardVertical()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
