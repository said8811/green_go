import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';

import '../../shared/constants.dart';
import '../buttons/primary_button.dart';
import '/theme/colors.dart';

class SelectedCircleWidget extends StatelessWidget {
  final bool isSelected;
  const SelectedCircleWidget({
    super.key,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 600),
      transitionBuilder: (child, animation) => FadeScaleTransition(
        animation: animation,
        child: child,
      ),
      child: isSelected
          ? Container(
              key: const ValueKey('selected'),
              height: 20,
              width: 20,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: AppColors.primary),
              child: const Icon(
                Icons.done,
                color: AppColors.white,
                size: 14,
              ),
            )
          : Container(
              key: const ValueKey('notSelected'),
              height: 20,
              width: 20,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: AppColors.white),
            ),
    );
  }
}

class SelectedBoxWidget extends StatelessWidget {
  final bool isSelected;
  final String? text;
  final Function() onPress;
  final String? iconPath;

  const SelectedBoxWidget({
    super.key,
    required this.isSelected,
    this.text,
    required this.onPress,
    this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: kAnimationDuration,
      child: isSelected
          ? SizedBox(
              key: const ValueKey('selected'),
              width: double.infinity,
              child: PrimaryButton(
                title: text ?? '',
                onPress: onPress,
                color: context.colorScheme.primary,
                textColor: context.colorScheme.surface,
              ),
            )
          : SizedBox(
              key: const ValueKey('notSelected'),
              width: double.infinity,
              child: PrimaryButton(
                title: text ?? '',
                onPress: onPress,
                borderColor: context.colorScheme.primary,
                color: context.colorScheme.surface,
                textColor: context.textTheme.bodyLarge?.color,
                splashColor: context.colorScheme.primary,
              ),
            ),
    );
  }
}
