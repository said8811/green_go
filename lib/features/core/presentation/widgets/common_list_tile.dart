import 'package:flutter/material.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';

import '/gen/assets.gen.dart';
import 'common_svg_picture.dart';

class CommonListTile extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final bool isDense;
  final String? iconPath;
  final Color? tileColor;
  final Color? borderColor;
  final bool showTrailing;
  final bool hasBorder;
  final bool isCentered;
  final Color? textColor;
  final TextStyle? customTitleStyle;
  final Widget? customTrailing;
  final Widget? customLeading;
  final double horizontalTitleGap;
  final EdgeInsets? padding;
  final ShapeBorder? shapeBorder;
  final int? maxLines;

  const CommonListTile({
    super.key,
    required this.title,
    this.onTap,
    this.isDense = true,
    this.iconPath,
    this.tileColor,
    this.showTrailing = false,
    this.borderColor,
    this.hasBorder = false,
    this.isCentered = false,
    this.textColor,
    this.customTitleStyle,
    this.customTrailing,
    this.customLeading,
    this.horizontalTitleGap = 10,
    this.padding,
    this.shapeBorder,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    if (isCentered) {
      return ListTile(
        minVerticalPadding: 0,
        tileColor: tileColor,
        shape: shapeBorder ?? const StadiumBorder(),
        onTap: onTap,
        dense: isDense,
        horizontalTitleGap: 0,
        contentPadding: EdgeInsets.zero,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconPath != null)
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CommonSvgPicture(
                  iconPath!,
                  color: context.colorScheme.primary,
                ),
              ),
            Text(
              title,
              style: customTitleStyle ??
                  (isDense
                      ? context.textTheme.bodyMedium
                      : context.textTheme.bodyLarge),
            ),
          ],
        ),
      );
    }

    return ListTile(
      contentPadding:
          padding ?? const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
      tileColor: tileColor,
      minVerticalPadding: 0,
      // shape: const StadiumBorder(),
      onTap: onTap,
      dense: isDense,
      horizontalTitleGap: horizontalTitleGap,
      leading: customLeading ??
          (iconPath != null
              ? CommonSvgPicture(
                  iconPath!,
                  color: textColor ?? context.colorScheme.primary,
                  size: 20,
                )
              : null),
      trailing: customTrailing ??
          (showTrailing
              ? CommonSvgPicture(Assets.icons.arrowDown, size: 16)
              : null),
      title: Text(
        title,
        style: customTitleStyle ??
            (isDense
                ? context.textTheme.bodyMedium
                    ?.copyWith(fontWeight: FontWeight.w600, color: textColor)
                : context.textTheme.bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold, color: textColor)),
        maxLines: maxLines ?? 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
