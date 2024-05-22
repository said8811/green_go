import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/infrastructure/url_launch_service.dart';
import 'package:green_go/features/core/presentation/buttons/primary_button.dart';
import 'package:green_go/features/core/presentation/components/common_appbar.dart';
import 'package:green_go/features/core/presentation/widgets/common_svg_picture.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/gen/assets.gen.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AboutPage extends ConsumerWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = context.textTheme;
    final l10n = context.l10n;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(
        title: l10n.aboutApp,
      ),
      body: SafeArea(
          child: Column(
        children: [
          const Gap(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Assets.images.logo.image(
              fit: BoxFit.cover,
            ),
          ),
          const Gap(40),
          Text(
            l10n.versionDialog,
            style: context.textTheme.labelSmall?.copyWith(color: context.colorScheme.greyDark, fontSize: 14),
          ),
          const Divider(height: 0),
          ListTile(
            onTap: () => UrlLaunchService.launchPhone("+998995117361"),
            leading: CommonSvgPicture(Assets.icons.phone),
            title: Text(
              l10n.callSuport,
              style: textTheme.labelSmall?.copyWith(fontSize: 16),
            ),
          ),
          const Divider(height: 0),
          const Spacer(),
          Text(l10n.ourSocials),
          const Gap(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    UrlLaunchService.launchUrl(
                        'https://www.facebook.com/profile.php?id=61559966455276&is_tour_dismissed');
                  },
                  child: CommonSvgPicture(Assets.icons.facebook),
                ),
                GestureDetector(
                  onTap: () {
                    UrlLaunchService.launchUrl('https://www.instagram.com/greengosharing?utm_source=qr');
                  },
                  child: CommonSvgPicture(Assets.icons.instagram),
                ),
                GestureDetector(
                  onTap: () {
                    UrlLaunchService.launchUrl('https://t.me/greengo_sharing_bot');
                  },
                  child: CommonSvgPicture(Assets.icons.telegram),
                ),
              ],
            ),
          ),
          const Gap(20),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(child: PrimaryButton(title: context.l10n.rateTheProgram, onPress: () {})),
              ],
            ),
          )
        ],
      )),
    );
  }
}
