// lib/themes/dark_theme.dart
import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Montserrat',
  colorScheme: ColorScheme.dark(
    primary: AppColors.primary,
    primaryContainer: AppColors.primaryLight,
    secondary: AppColors.secondary,
    secondaryContainer: AppColors.secondary,
    surface: Colors.grey[900]!,
    background: Colors.black,
    error: AppColors.danger,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.white,
    onBackground: Colors.white,
    onError: Colors.white,
    brightness: Brightness.dark,
  ),
  textTheme: TextTheme(
    bodyLarge: AppTextStyles.bodyLarge.copyWith(color: Colors.white),
    bodyMedium: AppTextStyles.bodyMedium.copyWith(color: Colors.white),
    headlineSmall: AppTextStyles.headlineSmall.copyWith(color: Colors.white),
    titleMedium: AppTextStyles.titleMedium.copyWith(color: Colors.white),
    titleSmall: AppTextStyles.titleSmall.copyWith(color: Colors.white),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.primary,
    titleTextStyle: AppTextStyles.headlineSmall.copyWith(color: Colors.white),
    iconTheme: const IconThemeData(color: Colors.white),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey[800],
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey[700]!),
    ),
  ),
  dividerTheme: DividerThemeData(color: Colors.grey[700], thickness: 1),
  cardTheme: CardTheme(
    color: Colors.grey[900],
    elevation: 2,
    margin: EdgeInsets.zero,
  ),
);
