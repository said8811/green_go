import 'package:flutter/material.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';

import '../widgets/common_svg_picture.dart';

class CircleButton extends StatelessWidget {
  final VoidCallback onPress;
  final String iconPath;
  final bool isBordered;
  final double? iconSize;
  final Color? color;
  final Color? splashColor;
  final Color? iconColor;
  final double padding;

  const CircleButton({
    super.key,
    required this.onPress,
    required this.iconPath,
    this.isBordered = false,
    this.iconSize,
    this.color,
    this.splashColor,
    this.iconColor,
    this.padding = 12,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      minWidth: 32,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: EdgeInsets.all(padding),
      color: isBordered ? null : color ?? context.colorScheme.primary,
      shape: isBordered
          ? CircleBorder(
              side: BorderSide(color: color ?? context.colorScheme.primary))
          : const CircleBorder(),
      splashColor: splashColor,
      onPressed: onPress,
      child: CommonSvgPicture(
        iconPath,
        size: iconSize ?? 18,
        color: iconColor,
      ),
    );
  }
}
