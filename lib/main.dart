import 'package:ecommerce_app/test_screen.dart';
import 'package:ecommerce_app/utilites/themes/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: TThemesApp.darkTheme,
      theme: TThemesApp.lightTheme,
      home: const Test(),
    );
  }
}
