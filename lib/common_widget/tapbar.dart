import 'package:ecommerce_app/utilites/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../app_manager/local_data.dart';

class TapBar extends StatelessWidget implements PreferredSizeWidget {
  const TapBar({super.key, required this.tabs});
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        unselectedLabelColor: darkGrey,
        indicatorColor: primaryColor,
        labelColor: DeviceUtils.isDarkMode(context) ? white : primaryColor,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}
