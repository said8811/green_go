import 'package:flutter/material.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';

import '/theme/colors.dart';

class CustomLabel extends StatelessWidget {
  final String label;
  final bool isRequired;
  final bool isBold;
  final String comment;
  final Color? textColor;

  const CustomLabel({
    super.key,
    required this.label,
    this.isRequired = false,
    this.isBold = false,
    this.comment = '',
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isRequired)
            const Padding(
              padding: EdgeInsets.only(right: 6),
              child: Text('*',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: AppColors.primary)),
            ),
          Expanded(
            child: Text(
              label,
              style: context.textTheme.bodyMedium?.copyWith(
                color: textColor ?? AppColors.primary,
                fontWeight: isBold ? FontWeight.w600 : FontWeight.normal,
                fontSize: 18,
              ),
            ),
          ),
          if (comment.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                comment,
                style: context.textTheme.bodyMedium
                    ?.copyWith(color: AppColors.grey),
              ),
            ),
        ],
      ),
    );
  }
}
