import 'package:flutter/material.dart';
import 'package:school_box/constants/colors.dart';
import 'package:school_box/theme/custom_themes/appbar_theme.dart';
import 'package:school_box/theme/custom_themes/bottomsheet_theme.dart';
import 'package:school_box/theme/custom_themes/checkbox_theme.dart';
import 'package:school_box/theme/custom_themes/chip_theme.dart';
import 'package:school_box/theme/custom_themes/elevated_button_theme.dart';
import 'package:school_box/theme/custom_themes/outlined_button_theme.dart';
import 'package:school_box/theme/custom_themes/text_button_theme.dart';
import 'package:school_box/theme/custom_themes/text_field_theme.dart';
import 'package:school_box/theme/custom_themes/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightButtonTheme,
    appBarTheme: SchoolBoxAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: AppCheckboxTheme.lightCheckBoxTheme,
    chipTheme: AppChipTheme.lightChipTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: AppTextFieldTheme.lightInputDecorationTheme,
    textButtonTheme: AppTextButtonTheme.lightTextButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.black,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkButtonTheme,
    appBarTheme: SchoolBoxAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: AppCheckboxTheme.darkCheckBoxTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: AppTextFieldTheme.darkInputDecorationTheme,
    textButtonTheme: AppTextButtonTheme.darkTextButtonTheme,
  );
}
