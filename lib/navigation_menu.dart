import 'package:ecommerce_app/screens/favourite/favourite_screen.dart';
import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/screens/Settings/settings_screen.dart';
import 'package:ecommerce_app/screens/shop/store_screen.dart';
import 'package:ecommerce_app/utilites/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final bool dark = DeviceUtils.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 80,
        indicatorColor: dark
            ? Colors.white.withOpacity(0.1)
            : Colors.black.withOpacity(0.1),
        backgroundColor: dark ? Colors.black : Colors.white,
        elevation: 0,
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Favourites'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        ],
      ),
      body: screens[selectedIndex],
    );
  }
}

List screens = [
  HomeScreen(),
  const StoreScreen(),
  const FavouriteScreen(),
  const SettingScreen()
];
