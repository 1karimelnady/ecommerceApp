import 'package:ecommerce_app/app_manager/local_data.dart';
import 'package:ecommerce_app/utilites/cache_helper.dart';
import 'package:ecommerce_app/utilites/themes/themes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'firebase_options.dart';

void main() async {
  final WidgetsBinding widgetsFlutterBinding =
      WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsFlutterBinding);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      home: const Scaffold(
        backgroundColor: primaryColor,
        body: Center(
          child: CircularProgressIndicator(
            color: white,
          ),
        ),
      ),
    );
  }
}
