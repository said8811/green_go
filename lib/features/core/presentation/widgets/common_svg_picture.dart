import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CommonSvgPicture extends StatelessWidget {
  final String iconPath;
  final Color? color;
  final double? size;

  const CommonSvgPicture(
    this.iconPath, {
    super.key,
    this.color,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      iconPath,
      colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      height: size,
      width: size,
    );
  }
}
