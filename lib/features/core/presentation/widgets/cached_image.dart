import 'package:flutter/material.dart';
import 'package:green_go/features/core/shared/extensions/string_extensions.dart';
import 'package:shimmer/shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CachedImage extends StatelessWidget {
  final String imageUrl;
  final BoxFit fit;
  final double? height;
  final double? width;
  final double? placeHolderHeight;
  final double? placeHolderWidth;
  final bool usePlaceHolder;

  const CachedImage(
    this.imageUrl, {
    super.key,
    this.fit = BoxFit.contain,
    this.height,
    this.width,
    this.placeHolderHeight,
    this.placeHolderWidth,
    this.usePlaceHolder = true,
  });

  @override
  Widget build(BuildContext context) {
    return imageUrl.isImage
        ? CachedNetworkImage(
            height: height,
            width: width,
            imageUrl: imageUrl,
            placeholder: (_, __) => SizedBox(
              height: placeHolderHeight,
              width: placeHolderWidth,
              child: usePlaceHolder
                  ? Shimmer.fromColors(
                      period: const Duration(milliseconds: 800),
                      baseColor: Colors.grey.shade200,
                      highlightColor: Colors.grey.shade100,
                      child: const ColoredBox(color: Colors.white),
                    )
                  : null,
            ),
            fit: fit,
            errorWidget: (_, error, stack) => const SizedBox(),
          )
        : SizedBox(height: height);
  }
}
