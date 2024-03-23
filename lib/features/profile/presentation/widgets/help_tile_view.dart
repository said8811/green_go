import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:green_go/services/router/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../gen/assets.gen.dart';
import 'profile_tile.dart';

class HelpTilesView extends ConsumerWidget {
  const HelpTilesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            l10n.help,
            style: context.textTheme.bodyMedium?.copyWith(fontSize: 20),
          ),
        ),
        ProfileTile(
          title: "Qo'llanma",
          icon: Assets.icons.book,
          onTap: () {},
        ),
        ProfileTile(
          title: "Texnik yordam",
          icon: Assets.icons.support,
          onTap: () {},
          subtitle: "+998 78 888 33 88",
        ),
        ProfileTile(
          title: "Ilova haqida",
          icon: Assets.icons.versionInfo,
          onTap: () {
            context.push(AppRoute.about.routePathWithSlash);
          },
          subtitle: "Versiya 1.7.6 3759",
        ),
      ],
    );
  }
}
