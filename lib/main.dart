import 'package:ecommerce_app/screens/on_boarding/on_boarding_screen.dart';
import 'package:ecommerce_app/screens/shop/store_screen.dart';
import 'package:ecommerce_app/utilites/cache_helper.dart';
import 'package:ecommerce_app/utilites/themes/themes.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: TThemesApp.darkTheme,
      theme: TThemesApp.lightTheme,
      home: const OnboardingScreen(),
    );
  }
}
