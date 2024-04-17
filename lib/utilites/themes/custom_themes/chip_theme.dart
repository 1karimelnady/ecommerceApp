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
  static ChipThemeData darklightChipThemeData = ChipThemeData(
    disabledColor: Colors.grey,
    selectedColor: Colors.blue,
    padding: const EdgeInsets.all(12),
    checkmarkColor: Colors.white,
    labelStyle: const TextStyle(color: Colors.white),
  );
}
