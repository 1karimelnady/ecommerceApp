import 'package:ecommerce_app/app_manager/local_data.dart';
import 'package:flutter/material.dart';

class ChipThemeApp {
  ChipThemeApp._();

  static ChipThemeData lightChipThemeData = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    padding: const EdgeInsets.all(12),
    checkmarkColor: white,
    selectedColor: primaryColor,
    labelStyle: const TextStyle(color: black),
  );
  static ChipThemeData darkChipThemeData = const ChipThemeData(
    disabledColor: darkerGrey,
    selectedColor: primaryColor,
    padding: EdgeInsets.all(12),
    checkmarkColor: white,
    labelStyle: TextStyle(color: white),
  );
}
