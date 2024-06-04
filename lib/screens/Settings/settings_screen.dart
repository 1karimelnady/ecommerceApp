import 'package:ecommerce_app/app_manager/routes_manager.dart';
import 'package:ecommerce_app/common_widget/custom_appbar.dart';
import 'package:ecommerce_app/screens/Settings/widget/menu_list_tile.dart';
import 'package:ecommerce_app/screens/home/widget/circular_image.dart';
import 'package:ecommerce_app/screens/home/widget/primary_header_container.dart';
import 'package:ecommerce_app/screens/home/widget/section_heading.dart';
import 'package:ecommerce_app/screens/orders/order_screen.dart';
import 'package:ecommerce_app/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../addresses/address_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
                height: 200,
                child: Column(
                  children: [
                    CustomAppBar(
                        title: Text(
                          'Account',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .apply(color: Colors.white),
                        ),
                        actions: const []),
                    ListTile(
                      leading: const CircularImage(
                        imageUrl: 'assets/images/push-pin.png',
                        width: 45,
                        height: 45,
                        padding: EdgeInsets.all(0),
                      ),
                      title: Text(
                        'Coding with K',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .apply(color: Colors.white),
                      ),
                      subtitle: Text(
                        'karimelnady728@gmail.com',
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .apply(color: Colors.white, fontWeightDelta: 8),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          RoutesManager.navigatorPush(
                              context, const ProfileScreen());
                        },
                        icon: const Icon(
                          Iconsax.edit,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  const SectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MenuListTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subTitle: 'Set shopping delivery address',
                    onTap: () {
                      RoutesManager.navigatorPush(
                          context, const AddressScreen());
                    },
                  ),
                  const MenuListTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add,remove products and move to checkout',
                  ),
                  MenuListTile(
                    icon: Iconsax.bag_tick,
                    title: 'My orders',
                    subTitle: 'In-progress and completed orders',
                    onTap: () {
                      RoutesManager.navigatorPush(context, OrdersScreen());
                    },
                  ),
                  const MenuListTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered bank account',
                  ),
                  const MenuListTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'List of all the discounted coupons',
                  ),
                  const MenuListTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set and kind of notifications message',
                  ),
                  const MenuListTile(
                    icon: Iconsax.security_card,
                    title: 'Account privacy',
                    subTitle: 'Manage data usage and connected accounts',
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const SectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const MenuListTile(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subTitle: 'Upload Data to your cloud firebase'),
                  MenuListTile(
                      icon: Iconsax.location,
                      title: 'Geolocation ',
                      subTitle: 'Set recommendation based on location',
                      trailing: Switch(value: false, onChanged: (val) {})),
                  MenuListTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(
                      value: true,
                      onChanged: (val) {},
                    ),
                  ),
                  MenuListTile(
                      icon: Iconsax.image,
                      title: 'HD Image  Quality',
                      subTitle: 'Set image quality to be seen',
                      trailing: Switch(value: false, onChanged: (val) {})),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
