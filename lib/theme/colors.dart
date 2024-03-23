import 'package:flutter/material.dart';

class CustomColorScheme extends ColorScheme {
  final Color textColor;
  final Color secondaryText;
  final Color inputFillColor;
  final Color dividerColor;
  final Color grey;
  final Color greyDark;
  final Color card;

  const CustomColorScheme({
    required super.brightness,
    required super.primary,
    required super.onPrimary,
    required super.secondary,
    required super.onSecondary,
    required super.error,
    required super.onError,
    required super.background,
    required super.onBackground,
    required super.surface,
    required super.onSurface,
    required super.tertiary,
    required this.textColor,
    required this.inputFillColor,
    required this.dividerColor,
    required this.grey,
    required this.greyDark,
    required this.secondaryText,
    required this.card,
  });

  factory CustomColorScheme.dark() => const CustomColorScheme(
        brightness: Brightness.dark,
        primary: AppColors.card,
        onPrimary: AppColors.white,
        secondary: AppColors.accent,
        onSecondary: AppColors.white,
        error: AppColors.error,
        onError: AppColors.white,
        background: AppColors.black,
        onBackground: AppColors.black,
        surface: AppColors.white,
        onSurface: AppColors.white,
        textColor: AppColors.white,
        inputFillColor: AppColors.inputFill,
        dividerColor: AppColors.grey,
        grey: AppColors.grey,
        greyDark: AppColors.greyDark,
        secondaryText: AppColors.text2,
        card: AppColors.card,
        tertiary: AppColors.tertiary,
      );

  factory CustomColorScheme.light() => const CustomColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primary,
        onPrimary: AppColors.white,
        secondary: AppColors.accent,
        onSecondary: AppColors.white,
        error: AppColors.error,
        onError: AppColors.white,
        background: AppColors.white,
        onBackground: AppColors.white,
        surface: AppColors.white,
        onSurface: AppColors.black,
        textColor: AppColors.black,
        inputFillColor: AppColors.inputFill,
        dividerColor: AppColors.grey,
        grey: AppColors.grey,
        greyDark: AppColors.greyDark,
        secondaryText: AppColors.text2,
        card: AppColors.background,
        tertiary: AppColors.tertiary,
      );
}

/// Defines the color palette

class AppColors {
  AppColors._();

  static const Color primary = Color(0xFF4CAF50);
  static const Color primaryLight = Color(0xFFB5E9FF);
  static const Color dark = Color(0xFF2B2A29);
  static const Color accent = Color(0xFFFF9800);
  static const Color error = Color(0xFFED2024);

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color text1 = Color(0xFF000000);
  static const Color text2 = Color(0xFFACACAC);
  static const Color grey = Color(0xFFD9D9D9);
  static const Color greyDark = Color(0xFF9E9E9E);
  static const Color inputFill = Color(0xFFF5F5F5);
  static const Color divider = Color(0xFFEDEDED);

  static const Color background = Color(0xFFEDEDED);
  static const Color card = Color(0xFF172A33);
  static const Color tertiary = Color(0xFFFCB3B3);
}
