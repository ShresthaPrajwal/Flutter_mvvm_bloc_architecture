import 'package:flutter/material.dart';
import 'package:moco_app/core/theme/app_colors.dart';

class AppTextStyles {
  // Light
  static const TextStyle light = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w300, // Light
  );

  // Regular
  static const TextStyle regular = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400, // Regular
  );

  // Medium
  static const TextStyle medium = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500, // Medium
  );

  // Bold
  static const TextStyle bold = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700, // Bold
  );

  // Body Text Styles
  static final TextStyle bodyLarge = regular.copyWith(
    fontSize: 16,
    color: AppColors.textPrimary,
  );

  static final TextStyle bodyMedium = regular.copyWith(
    fontSize: 14,
    color: AppColors.textPrimary,
  );

  // Headline Text Styles
  static final TextStyle headlineSmall = bold.copyWith(
    fontSize: 20,
    color: AppColors.textPrimary,
  );

  // Title Text Styles
  static final TextStyle titleMedium = medium.copyWith(
    fontSize: 16,
    color: AppColors.textPrimary,
  );

  static final TextStyle titleSmall = medium.copyWith(
    fontSize: 14,
    color: AppColors.textSecondary,
  );
}
