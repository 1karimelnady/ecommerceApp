import 'package:ecommerce_app/app_manager/local_data.dart';
import 'package:ecommerce_app/common_widget/custom_appbar.dart';
import 'package:ecommerce_app/common_widget/enums.dart';
import 'package:ecommerce_app/common_widget/rounded_container.dart';
import 'package:ecommerce_app/common_widget/search_container.dart';
import 'package:ecommerce_app/screens/home/widget/brand_title_verified_icon.dart';
import 'package:ecommerce_app/screens/home/widget/gird_layout.dart';
import 'package:ecommerce_app/screens/home/widget/section_heading.dart';
import 'package:ecommerce_app/utilites/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../common_widget/cart_counter.dart';
import '../home/widget/circular_image.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [CartCounter(iconPressed: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              floating: true,
              backgroundColor: DeviceUtils.isDarkMode(context) ? black : white,
              automaticallyImplyLeading: false,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(24),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    const SearchContainer(
                      text: 'Search in store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    SectionHeading(
                      title: 'Featured Brands',
                      textPressed: () {},
                    ),
                    const SizedBox(
                      height: 16 / 1.5,
                    ),
                    GirdLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: RoundedContainer(
                              padding: const EdgeInsets.all(8),
                              showBorder: true,
                              backgroundColor: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    child: CircularImage(
                                      imageUrl: 'images/push-pin.png',
                                      isNetworkImage: false,
                                      backgroundColor: Colors.transparent,
                                      // overlayColor:
                                      //     DeviceUtils.isDarkMode(context) ? black : white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const BrandTitleVerifiedIcon(
                                          title: 'Nike',
                                          brandTextSizes: TextSizes.large,
                                        ),
                                        Text(
                                          '256 product',
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        })
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}
