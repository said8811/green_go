import 'package:flutter/material.dart';
import '/theme/colors.dart';

extension ThemeX on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  CustomColorScheme get colorScheme {
    final colorScheme = Theme.of(this).colorScheme;
    if (colorScheme.brightness == Brightness.dark) {
      return CustomColorScheme.dark();
    }
    return CustomColorScheme.light();
  }
}
