import 'package:flutter/material.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';

class CommonLabeledRow extends StatelessWidget {
  final String? label;
  final String? value;
  final Widget? child;
  final Widget? leading;
  final EdgeInsets? padding;

  const CommonLabeledRow({
    super.key,
    this.label,
    this.value,
    this.child,
    this.leading,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          padding ?? const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leading ??
              Text(
                label!,
                style: context.textTheme.bodyMedium,
              ),
          child ??
              Text(
                value!,
                style: context.textTheme.bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
        ],
      ),
    );
  }
}
