import 'package:flutter/material.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';

class CommonTitleInfo extends StatelessWidget {
  final String title;
  final String subTitle;
  final EdgeInsets? padding;
  final bool padded;
  final TextStyle? titleStyle;
  final TextStyle? subTitleStyle;
  const CommonTitleInfo({
    super.key,
    required this.title,
    required this.subTitle,
    this.padding,
    this.titleStyle,
    this.subTitleStyle,
    this.padded = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padded ? padding ?? const EdgeInsets.symmetric(horizontal: 20) : EdgeInsets.zero,
      child: Row(
        children: [
          Text(
            title,
            style: titleStyle ?? context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400),
          ),
          const Spacer(),
          Text(
            subTitle,
            style: subTitleStyle ?? context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
