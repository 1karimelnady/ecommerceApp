import 'package:ecommerce_app/app_manager/local_data.dart';
import 'package:ecommerce_app/app_manager/routes_manager.dart';
import 'package:ecommerce_app/utilites/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.leadingPressed,
      this.actions});

  final Widget? title;
  final bool showBackArrow;
  final List<Widget>? actions;
  final IconData? leadingIcon;
  final VoidCallback? leadingPressed;
  @override
  Widget build(BuildContext context) {
    final isDark = DeviceUtils.isDarkMode(context);
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          actions: actions,
          leading: showBackArrow
              ? IconButton(
                  onPressed: () {
                    RoutesManager.pop(context);
                  },
                  icon: Icon(
                    Iconsax.arrow_left,
                    color: isDark ? white : darkColor,
                  ))
              : null,
          title: title,
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}
