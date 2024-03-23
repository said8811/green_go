import 'package:flutter/material.dart';

import '../widgets/common_svg_picture.dart';
import '../components/loading_widget.dart';

class AppIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String iconPath;
  final Color? iconColor;
  final double? size;
  final bool isLoading;

  const AppIconButton({
    super.key,
    required this.onPressed,
    required this.iconPath,
    this.iconColor,
    this.size,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      enableFeedback: true,
      onPressed: isLoading ? null : onPressed,
      icon: isLoading ? const LoadingWidget() : CommonSvgPicture(iconPath, color: iconColor, size: size),
    );
  }
}
