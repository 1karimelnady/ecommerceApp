import 'package:ecommerce_app/screens/home/widget/home_appbar.dart';
import 'package:ecommerce_app/screens/home/widget/primary_header_container.dart';
import 'package:ecommerce_app/screens/home/widget/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../common_widget/search_container.dart';
import '../categories/categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          ],
        ),
      ),
    );
  }
}
