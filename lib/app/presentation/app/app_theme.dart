import 'package:flutter/material.dart';
import 'package:food_products/app/presentation/app/app_colors.dart';

class AppTheme {
  const AppTheme._();
  static ThemeData theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      scrim: AppColors.buttonPrimaryColor,
      primaryContainer: AppColors.blueGrey,
      secondaryContainer: AppColors.blueWhite,
      tertiaryContainer: AppColors.yellowWhite,
    ),
    useMaterial3: true,
  );
}
