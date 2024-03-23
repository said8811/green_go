import '../../shared/constants.dart';
import 'package:flutter/material.dart';

import 'cached_image.dart';

class ZoomableImage extends StatefulWidget {
  final String imageUrl;

  const ZoomableImage(this.imageUrl, {super.key});

  @override
  State<ZoomableImage> createState() => _ZoomableImageState();
}

class _ZoomableImageState extends State<ZoomableImage>
    with SingleTickerProviderStateMixin {
  late TransformationController transformationController;
  late AnimationController animationController;
  Animation<Matrix4>? animation;

  @override
  void initState() {
    super.initState();
    transformationController = TransformationController();
    animationController =
        AnimationController(vsync: this, duration: kAnimationDuration)
          ..addListener(
            () => transformationController.value = animation!.value,
          );
  }

  @override
  void dispose() {
    transformationController.dispose();
    animationController.dispose();
    super.dispose();
  }

  void resetAnimation() {
    animation = Matrix4Tween(
            begin: transformationController.value, end: Matrix4.identity())
        .animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInBack,
      ),
    );
    animationController.forward(from: 0);
  }

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      transformationController: transformationController,
      panEnabled: false,
      minScale: 1,
      maxScale: 2,
      onInteractionEnd: (details) {
        resetAnimation();
      },
      clipBehavior: Clip.none,
      child: OrientationBuilder(
        builder: (context, orientation) => AspectRatio(
          aspectRatio: orientation == Orientation.portrait ? 1.5 : 1,
          child: CachedImage(
            widget.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
