import 'package:flutter/material.dart';

class ChipThemeApp {
  ChipThemeApp._();

  static ChipThemeData lightChipThemeData = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    padding: const EdgeInsets.all(12),
    checkmarkColor: Colors.white,
    selectedColor: Colors.blue,
    labelStyle: const TextStyle(color: Colors.black),
  );
  static ChipThemeData darkChipThemeData = const ChipThemeData(
    disabledColor: Colors.grey,
    selectedColor: Colors.blue,
    padding: EdgeInsets.all(12),
    checkmarkColor: Colors.white,
    labelStyle: TextStyle(color: Colors.white),
  );
}
