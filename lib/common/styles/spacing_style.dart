import 'package:flutter/material.dart';
import 'package:school_box/constants/sizes.dart';

class AppSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: AppSizes.appBarHeight,
    left: AppSizes.defaultSpacing,
    right: AppSizes.defaultSpacing,
    bottom: AppSizes.defaultSpacing,
  );
}
