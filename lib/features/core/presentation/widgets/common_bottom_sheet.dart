import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';

class CommonBottomSheet extends StatelessWidget {
  const CommonBottomSheet({
    super.key,
    required this.title,
    required this.child,
    this.useSafeArea = true,
    this.button,
  });

  final String title;
  final Widget child;
  final bool useSafeArea;
  final Widget? button;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        if (useSafeArea)
          SafeArea(
            minimum: const EdgeInsets.only(bottom: 20),
            child: _buildChild(context),
          )
        else
          _buildChild(context),
        Positioned(
          right: 8,
          top: 8,
          child: IconButton(
            onPressed: () => Navigator.maybePop(context),
            icon: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.colorScheme.primary,
              ),
              child: const Icon(Icons.close, size: 16),
            ),
          ),
        ),
      ],
    );
  }

  Column _buildChild(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const Gap(20),
        Text(
          title,
          style: context.textTheme.bodyLarge,
        ),
        child,
        if (button != null)
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: button,
                ),
              ),
            ],
          ),
      ],
    );
  }
}
