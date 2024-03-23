import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/presentation/widgets/common_svg_picture.dart';
import 'package:green_go/gen/assets.gen.dart';

class ActinoButtonsView extends StatelessWidget {
  final VoidCallback onZoomIn;
  final VoidCallback onZoomOut;
  final VoidCallback onDirection;
  const ActinoButtonsView({
    super.key,
    required this.onZoomIn,
    required this.onZoomOut,
    required this.onDirection,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ActionChip.elevated(
          padding: const EdgeInsets.all(12),
          onPressed: onZoomIn,
          shape: const CircleBorder(
              side: BorderSide(color: Colors.transparent, width: 0)),
          label: const Center(child: Icon(Icons.add)),
        ),
        const Gap(10),
        ActionChip.elevated(
          padding: const EdgeInsets.all(12),
          onPressed: onZoomOut,
          shape: const CircleBorder(side: BorderSide(color: Colors.white)),
          label: const Center(child: Icon(Icons.remove)),
        ),
        const Gap(10),
        ActionChip.elevated(
          padding: const EdgeInsets.all(12),
          onPressed: onDirection,
          shape: const CircleBorder(
              side: BorderSide(color: Colors.white, width: 0)),
          label: Center(child: CommonSvgPicture(Assets.icons.myLocation)),
        ),
      ],
    );
  }
}
