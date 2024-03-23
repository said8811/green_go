import 'package:flutter/material.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';

class CommonPageIndicator extends StatelessWidget {
  final int total;
  final int currentInd;

  const CommonPageIndicator({
    super.key,
    required this.total,
    required this.currentInd,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(vertical: 4),
      width: 48,
      decoration: BoxDecoration(
          color: context.colorScheme.onSurface,
          borderRadius: BorderRadius.circular(16)),
      child: Text(
        '${currentInd + 1}/$total',
        style: context.textTheme.labelMedium?.copyWith(
            color: context.colorScheme.surface, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
