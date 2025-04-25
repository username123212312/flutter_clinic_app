import 'app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final colorScheme = ColorScheme.fromSeed(
    seedColor: Pallete.primaryColor,
  );
  static OutlineInputBorder _border(Color color) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: color, width: 3),
  );
  static final lightThemeMode = ThemeData.light().copyWith(
    colorScheme: colorScheme,
  );

  static final darkThemeMode = ThemeData.dark().copyWith(
    colorScheme: colorScheme,
    scaffoldBackgroundColor: Pallete.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(27),
      enabledBorder: _border(Pallete.borderColor),
      focusedBorder: _border(Pallete.gradient2),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData().copyWith(
      backgroundColor: Pallete.backgroundColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: colorScheme.primary),
    ),
  );
}
