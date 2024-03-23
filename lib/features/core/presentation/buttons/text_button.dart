import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';

import 'package:flutter/material.dart';

class SecondaryTextButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  const SecondaryTextButton(
      {super.key, required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      splashColor: context.colorScheme.textColor,
      onTap: onPress,
      child: Text(
        title,
        style: context.textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.bold,
          color: context.colorScheme.primary,
        ),
      ),
    );
  }
}
