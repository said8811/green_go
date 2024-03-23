import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/gen/fonts.gen.dart';

import 'colors.dart';
import 'texstyles.dart';

class AppTheme {
  // final ThemeData _dark = ThemeData(
  //   useMaterial3: true,
  //   colorScheme: CustomColorScheme.light(),
  //   fontFamily: FontFamily.gilroy,
  //   textTheme: getTextTheme(),
  //   datePickerTheme: getDatePickerThem(),
  //   bottomSheetTheme: getBottomSheetTheme(),
  //   dialogTheme: getDialogTheme(),
  //   cardTheme: getCardTheme(),
  //   appBarTheme: getAppBarTheme(),
  //   sliderTheme: const SliderThemeData(trackHeight: 2, activeTrackColor: AppColors.black),
  //   scaffoldBackgroundColor: AppColors.white,
  //   elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(surfaceTintColor: Colors.white)),
  //   inputDecorationTheme: getInputDecorationTheme(),
  //   dividerTheme: const DividerThemeData(color: AppColors.divider),
  // );

  final _light = ThemeData(
    useMaterial3: true,
    colorScheme: CustomColorScheme.light(),
    fontFamily: FontFamily.inter,
    datePickerTheme: getDatePickerThem(),
    bottomSheetTheme: getBottomSheetTheme(),
    dialogTheme: getDialogTheme(),
    cardTheme: getCardTheme(),
    appBarTheme: getAppBarTheme(),
    textTheme: getTextTheme(),
    scaffoldBackgroundColor: AppColors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(surfaceTintColor: Colors.white),
    ),
    inputDecorationTheme: getInputDecorationTheme(),
    bottomAppBarTheme: const BottomAppBarTheme(color: AppColors.dark),
    dividerTheme: const DividerThemeData(color: AppColors.divider),
  );

  ThemeData get light {
    return _light;
  }

  ThemeData get dark {
    return _light;
  }
}

DatePickerThemeData getDatePickerThem() {
  return const DatePickerThemeData(
    backgroundColor: AppColors.background,
    surfaceTintColor: AppColors.background,
  );
}

TextTheme getTextTheme({
  bool isDark = false,
}) {
  Color? textColor;
  if (isDark) {
    textColor = AppColors.white;
  }
  return TextTheme(
    bodyLarge: AppTextStyles.bodyLarge.copyWith(color: textColor),
    bodyMedium: AppTextStyles.bodyMedium.copyWith(color: textColor),
    bodySmall: AppTextStyles.bodySmall.copyWith(color: textColor),
    labelLarge: AppTextStyles.labelLarge.copyWith(color: textColor),
    labelMedium: AppTextStyles.labelMedium.copyWith(color: textColor),
    labelSmall: AppTextStyles.labelSmall.copyWith(color: textColor),
    headlineMedium: AppTextStyles.headlineMedium.copyWith(color: textColor),
    displayLarge: AppTextStyles.displayLarge.copyWith(color: textColor),
    displayMedium: AppTextStyles.displayMedium.copyWith(color: textColor),
    displaySmall: AppTextStyles.displaySmall.copyWith(color: textColor),
  );
}

BottomSheetThemeData getBottomSheetTheme({
  bool isDark = false,
}) {
  return BottomSheetThemeData(
    backgroundColor: isDark ? AppColors.inputFill : Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    clipBehavior: Clip.hardEdge,
    elevation: 4,
    modalBarrierColor: AppColors.black.withOpacity(0.6),
    surfaceTintColor: isDark ? AppColors.black : AppColors.white,
  );
}

DialogTheme getDialogTheme() {
  return const DialogTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    surfaceTintColor: AppColors.white,
    backgroundColor: AppColors.white,
  );
}

CardTheme getCardTheme() {
  return const CardTheme(
    surfaceTintColor: AppColors.white,
    color: AppColors.white,
  );
}

AppBarTheme getAppBarTheme({
  bool isDark = false,
}) {
  return AppBarTheme(
    centerTitle: false,
    color: isDark ? AppColors.dark : AppColors.primary,
    shadowColor: Colors.transparent,
    elevation: 0,
    titleSpacing: 0,
    titleTextStyle: AppTextStyles.bodyMedium.copyWith(
      color: isDark ? AppColors.white : AppColors.white,
      fontWeight: FontWeight.w600,
    ),
    surfaceTintColor: isDark ? AppColors.inputFill : AppColors.primary,
  );
}

InputDecorationTheme getInputDecorationTheme() {
  const inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: AppColors.grey),
  );
  return InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
    border: inputBorder,
    hintStyle: AppTextStyles.bodyMedium.copyWith(color: AppColors.text2),
    errorBorder: inputBorder,
    focusedBorder: inputBorder,
    enabledBorder: inputBorder,
    disabledBorder: inputBorder,
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    // fillColor: AppColors.inputFill,
    // filled: true,
  );
}

final appThemeProvider = Provider<AppTheme>(
  (ref) => AppTheme(),
);
