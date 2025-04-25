import 'app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightColorScheme = ColorScheme.light(
    primary: Pallete.primaryColor,
    secondary: Colors.green,
    // ... other light colors
  );

  static final darkColorScheme = ColorScheme.dark(
    primary: Pallete.primaryColor,
    secondary: Colors.lightGreen,
    // ... other dark colors
  );

  static final lightThemeMode = _baseTheme(lightColorScheme);

  static final darkThemeMode = _baseTheme(darkColorScheme);
  static ThemeData _baseTheme(ColorScheme colorScheme) {
    return ThemeData().copyWith(
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
      textTheme: TextTheme().copyWith(
        labelMedium: TextStyle().copyWith(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle().copyWith(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  static OutlineInputBorder _border(Color color) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: color, width: 3),
  );
}
