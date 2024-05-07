import 'package:flutter/material.dart';

import '../app_manager/local_data.dart';
import '../utilites/device/device_utility.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    required this.icon,
    this.showBackground = true,
    this.showBorder = true,
  });

  final String text;
  final IconData icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtils.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        width: DeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? darkColor
                    : lightColor
                : Colors.transparent,
            borderRadius: BorderRadius.circular(16),
            border: showBorder ? Border.all(color: grey) : null),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                color: darkerGrey,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
