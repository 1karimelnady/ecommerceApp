import 'package:flutter/material.dart';

import 'custom_themes/app_bar_theme.dart';
import 'custom_themes/bootmsheet_theme.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/elvated_button_theme.dart';
import 'custom_themes/ouylinedbutton_theme.dart';
import 'custom_themes/text_themes.dart';
import 'custom_themes/textfield_theme.dart';

class TThemesApp {
  TThemesApp._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    primaryColor: Colors.blue,
    fontFamily: 'Poppins',
    inputDecorationTheme: TextFormFieldThemeApp.lightInputDecorationTheme,
    checkboxTheme: CheckBoxThemeApp.lightCheckboxTheme,
    bottomSheetTheme: BottomSheetThemeApp.lightBottomSheetTheme,
    appBarTheme: AppBarThemesApp.lightAppBarThemesApp,
    scaffoldBackgroundColor: Colors.white,
    outlinedButtonTheme: OutlinedButtonThemeApp.lightOutlinedButtonThemeData,
    textTheme: TTextThemesApp.lightTextTheme,
    chipTheme: ChipThemeApp.lightChipThemeData,
    elevatedButtonTheme: ElevatedButtonThemeApp.lightElevatedButtonThemeData,
  );
  static ThemeData darkTheme = ThemeData(
    textTheme: TTextThemesApp.darkTextTheme,
    brightness: Brightness.dark,
    useMaterial3: true,
    outlinedButtonTheme: OutlinedButtonThemeApp.darkOutlinedButtonThemeData,
    inputDecorationTheme: TextFormFieldThemeApp.darkInputDecorationTheme,
    fontFamily: 'Poppins',
    chipTheme: ChipThemeApp.darklightChipThemeData,
    checkboxTheme: CheckBoxThemeApp.darkCheckboxTheme,
    bottomSheetTheme: BottomSheetThemeApp.darkBottomSheetTheme,
    appBarTheme: AppBarThemesApp.darkAppBarThemesApp,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    elevatedButtonTheme: ElevatedButtonThemeApp.darkElevatedButtonThemeData,
  );
}
