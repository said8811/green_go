import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
          const Divider(),
          ListTile(
            leading: CommonSvgPicture(Assets.icons.phone),
            title: Text(
              l10n.callSuport,
              style: textTheme.labelSmall?.copyWith(fontSize: 16),
            ),
          ),
          const Divider(),
          const Spacer(),
          Text(l10n.ourSocials),
          const Gap(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonSvgPicture(Assets.icons.facebook),
                CommonSvgPicture(Assets.icons.instagram),
                CommonSvgPicture(Assets.icons.telegram),
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
