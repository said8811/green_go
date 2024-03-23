import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import '/theme/colors.dart';

class CustomBackButton extends StatelessWidget {
  final Function()? onBackPress;
  final bool hasContainer;
  final bool showX;
  const CustomBackButton({
    super.key,
    this.onBackPress,
    this.hasContainer = false,
    this.showX = false,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      highlightColor: AppColors.primary.withOpacity(0.4),
      onPressed: () {
        if (onBackPress != null) {
          onBackPress!();
        } else {
          if (context.canPop()) {
            context.pop();
          } else {
            context.go('/');
          }
        }
      },
      icon: const Icon(Icons.arrow_back),
    );
  }
}
