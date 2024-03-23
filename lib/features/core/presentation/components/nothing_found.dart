import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/presentation/widgets/common_svg_picture.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';

import '/gen/assets.gen.dart';

class EmptyView extends StatelessWidget {
  final String? title;
  final String? subtitle;
  const EmptyView({
    super.key,
    this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CommonSvgPicture(Assets.icons.logo),
          const Gap(32),
          Text(
            title ?? context.l10n.emptyViewTitle,
            style: context.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
              color: context.colorScheme.primary,
            ),
          ),
          const Gap(4),
          Text(
            subtitle ?? context.l10n.emptyViewTSubtitle,
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
