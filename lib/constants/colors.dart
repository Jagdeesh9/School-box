import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // App basic colors

  static const Color primaryColor = Color(0xFFd90000);
  static const Color secondaryColor = Color(0xFF006B3C);
  static const Color accentColor = Color(0xFFFFA700);

//   Text Colors

  static const Color textPrimary = Color(0xFF232323);
  static const Color textSecondary = Color(0xFF666666);
  static const Color textWhite = Colors.white;

//   Background Colors

  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);
  static const Color redBackground = Color(0xFFd90000);

//   Background container colors

  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = Colors.white.withOpacity(0.1);

//   Button Colors
  static const Color buttonPrimary = Color(0xFFd90000);
  static const Color buttonSecondary = Color(0xFF222222);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

//   Border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

//   Errors and validation colors

  static const Color error = Color(0xffe53409);
  static const Color success = Color(0xFF006B3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF197602);

//   Neutaral shaded
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);

//   Gradient Colors

  static const Gradient linerGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xFFFF9A9E),
      Color(0xFFFAD0C4),
      Color(0xFFFAD0C4),
    ],
  );
}
