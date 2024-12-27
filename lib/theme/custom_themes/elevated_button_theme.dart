import 'package:flutter/material.dart';
import 'package:school_box/constants/colors.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static final ElevatedButtonThemeData lightButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: AppColors.primaryColor,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 12),
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.deepOrange,
      side: const BorderSide(color: AppColors.primaryColor),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      textStyle: const TextStyle(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
    ),
  );
  static final ElevatedButtonThemeData darkButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: AppColors.primaryColor,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 12),
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.deepOrange,
      side: const BorderSide(color: AppColors.primaryColor),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      textStyle: const TextStyle(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
    ),
  );
}
