// lib/themes/app_theme.dart
import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

final ThemeData appTheme = ThemeData(
  useMaterial3: true, 
  fontFamily: 'Montserrat',
  colorScheme: ColorScheme.light(
    primary: AppColors.primary,
    primaryContainer: AppColors.primaryLight,
    secondary: AppColors.secondary,
    secondaryContainer: AppColors.secondary,
    surface: AppColors.surface,
    background: AppColors.background,
    error: AppColors.danger,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: AppColors.textPrimary,
    onBackground: AppColors.textPrimary,
    onError: Colors.white,
    brightness: Brightness.light,
  ),
  textTheme: TextTheme(
    bodyLarge: AppTextStyles.bodyLarge,
    bodyMedium: AppTextStyles.bodyMedium,
    headlineSmall: AppTextStyles.headlineSmall,
    titleMedium: AppTextStyles.titleMedium,
    titleSmall: AppTextStyles.titleSmall,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.primary,
    titleTextStyle: AppTextStyles.headlineSmall.copyWith(color: Colors.white),
    iconTheme: const IconThemeData(color: Colors.white),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.inputBackground,
    border: OutlineInputBorder(borderSide: BorderSide(color: AppColors.border)),
  ),
  dividerTheme: DividerThemeData(color: AppColors.divider, thickness: 1),
  cardTheme: CardTheme(
    color: AppColors.surface,
    elevation: 2,
    margin: EdgeInsets.zero,
  ),
);
