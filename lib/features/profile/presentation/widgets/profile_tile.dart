import 'package:flutter/material.dart';
import 'package:green_go/features/core/presentation/widgets/common_svg_picture.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileTile extends ConsumerWidget {
  final String title;
  final String icon;
  final VoidCallback onTap;
  final String? subtitle;
  final Color? iconColor;
  const ProfileTile(
      {super.key, required this.title, required this.icon, required this.onTap, this.iconColor, this.subtitle});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      onTap: onTap,
      leading: CommonSvgPicture(
        icon,
        color: iconColor,
      ),
      title: Text(
        title,
        style: context.textTheme.labelSmall?.copyWith(fontSize: 16),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle!,
              style: context.textTheme.labelSmall?.copyWith(fontSize: 14, color: context.colorScheme.greyDark),
            )
          : null,
    );
  }
}
