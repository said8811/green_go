import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:green_go/services/router/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../gen/assets.gen.dart';
import 'profile_tile.dart';

class MainTilesView extends ConsumerWidget {
  const MainTilesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            l10n.common,
            style: context.textTheme.bodyMedium?.copyWith(fontSize: 20),
          ),
        ),
        ProfileTile(
          title: l10n.travelHistory,
          icon: Assets.icons.history,
          onTap: () {
            context.push(AppRoute.history.routePathWithSlash);
          },
        ),
        ProfileTile(
          title: l10n.settings,
          icon: Assets.icons.profileSettings,
          onTap: () {
            context.push(AppRoute.settings.routePathWithSlash);
          },
        ),
      ],
    );
  }
}
