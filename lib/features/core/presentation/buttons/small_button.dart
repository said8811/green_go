import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';

import 'package:flutter/material.dart';

class SecondarySmallButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  const SecondarySmallButton(
      {super.key, required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      height: 32,
      elevation: 0,
      color: context.colorScheme.inputFillColor,
      onPressed: onPress,
      minWidth: 30,
      shape:
          StadiumBorder(side: BorderSide(color: context.colorScheme.primary)),
      child: Text(
        title,
        style: context.textTheme.bodyMedium?.copyWith(
          color: context.colorScheme.primary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class AppSmallBtn extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  const AppSmallBtn({super.key, required this.onPress, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      height: 32,
      elevation: 0,
      color: context.colorScheme.inputFillColor,
      onPressed: onPress,
      minWidth: 30,
      shape: const StadiumBorder(),
      child: Text(
        title,
        style: context.textTheme.bodySmall?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
