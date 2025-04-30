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
      appBarTheme: AppBarTheme().copyWith(
        backgroundColor: Pallete.backgroundColor,
        iconTheme: IconThemeData(color: Colors.black, size: 34),
        centerTitle: true,
      ),
      scaffoldBackgroundColor: Pallete.backgroundColor,
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.all(27),
        enabledBorder: _border(Pallete.inactiveColor2),
        focusedBorder: _border(Pallete.primaryColor),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData().copyWith(
        backgroundColor: Pallete.backgroundColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(backgroundColor: colorScheme.primary),
      ),
      textTheme: _textTheme(),
    );
  }

  static TextStyle _textStyle() =>
      TextStyle().copyWith(fontFamily: 'Poppins', color: Colors.black);

  static TextTheme _textTheme() {
    return TextTheme().copyWith(
      labelMedium: _textStyle().copyWith(fontWeight: FontWeight.w600),
      labelSmall: _textStyle().copyWith(fontWeight: FontWeight.w500),
      titleSmall: _textStyle().copyWith(fontWeight: FontWeight.w400),
    );
  }

  static OutlineInputBorder _border(Color color) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: color, width: 3),
  );
}
