import 'package:flutter/material.dart';
import 'package:food_products/app/domain/entities/app/app_contantes.dart';
import 'package:food_products/app/presentation/app/app_colors.dart';

class AppTheme {
  AppTheme._();
  static ThemeData theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      scrim: AppColors.buttonPrimaryColor,
      primary: AppColors.blueGrey,
      secondary: AppColors.blueWhite,
      tertiary: AppColors.yellowWhite,
    ),
    inputDecorationTheme: inputDecorationTheme,
    useMaterial3: true,
  );

  static InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
        isDense: true,
        fillColor: AppColors.blueGrey,
        filled: true,
        border: inputBorder,
        errorBorder: inputBorder,
        focusedBorder: inputBorder,
        disabledBorder: inputBorder,
        enabledBorder: inputBorder,
        prefixStyle: textStyle,
        counterStyle: textStyle,
        suffixStyle: textStyle,
        labelStyle: textStyle,
        helperStyle: textStyle,
        hintStyle: textStyle,
        floatingLabelStyle: textStyle,
      );

  static TextStyle textStyle = const TextStyle(
    fontSize: 17,
    height: 1.2,
    fontWeight: FontWeight.w600,
    color: Color(0xff909096),
  );

  static OutlineInputBorder inputBorder = OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(
      AppContantes.borderRadius,
    ),
  );
}
