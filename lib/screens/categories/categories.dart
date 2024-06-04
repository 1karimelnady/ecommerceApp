import 'package:flutter/material.dart';

import '../../app_manager/local_data.dart';
import '../../utilites/device/device_utility.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
    this.backgroundColor,
    required this.textColor,
    required this.title,
    required this.image,
    this.onTap,
  });

  final Color? backgroundColor;
  final Color textColor;
  final String title;
  final String image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtils.isDarkMode(context);
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Column(
                children: [
                  Container(
                    width: 56,
                    height: 55,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: backgroundColor ??
                          (dark ? Colors.black : Colors.white),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Image(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                        color: dark ? lightColor : darkColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .apply(color: textColor),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
