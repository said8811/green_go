import 'package:flutter/material.dart';

import '../../shared/extensions/theme_extensions.dart';
import 'cached_image.dart';

class CommonCircleAvatar extends StatelessWidget {
  final String imageUrl;
  final Size? size;
  const CommonCircleAvatar(
    this.imageUrl, {
    super.key,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size?.height ?? 90,
      width: size?.height ?? 90,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        border: Border.all(color: context.colorScheme.inputFillColor),
        shape: BoxShape.circle,
      ),
      child: CachedImage(imageUrl),
    );
  }
}
