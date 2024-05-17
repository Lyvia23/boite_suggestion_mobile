import 'package:boite_suggestion/theme/Palette.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
      fontFamily: 'Inter',
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: Palette.whiteColor,
      appBarTheme: const AppBarTheme(
          backgroundColor: Palette.whiteColor,
          foregroundColor: Palette.blackColor,
          elevation: 0),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Palette.whiteColor,
      ));
}
