import 'package:flutter/material.dart';

class AppTextButtonTheme {
  AppTextButtonTheme._();

  static final TextButtonThemeData lightTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      backgroundColor: Colors.transparent, // Background color
    ),
  );

  // Dark theme for TextButton
  static final TextButtonThemeData darkTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.white, // Text color for dark theme
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      backgroundColor: Colors.transparent, // Background color
    ),
  );
}
