import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/core/infrastructure/url_launch_service.dart';
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
          title: "Q&A",
          icon: Assets.icons.book,
          onTap: () {
            context.push(AppRoute.qApage.routePathWithSlash);
          },
        ),
        ProfileTile(
          title: l10n.techSupport,
          icon: Assets.icons.support,
          onTap: () {
            UrlLaunchService.launchPhone("+998995117361");
          },
          subtitle: "+998 99 511 73 61",
        ),
        ProfileTile(
          title: l10n.publicOffer,
          icon: Assets.icons.documentText,
          iconColor: context.colorScheme.primary,
          onTap: () {
            UrlLaunchService.launchUrl("https://oferta.green-go.uz/");
          },
        ),
        ProfileTile(
          title: l10n.aboutApp,
          icon: Assets.icons.versionInfo,
          onTap: () {
            context.push(AppRoute.about.routePathWithSlash);
          },
        ),
      ],
    );
  }
}
