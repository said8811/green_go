import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/presentation/buttons/primary_button.dart';
import 'package:green_go/features/core/presentation/widgets/common_svg_picture.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/gen/assets.gen.dart';
import 'package:green_go/services/localization/application/locale_notifier.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../services/localization/shared/providers.dart';

class LanguageChoosePage extends ConsumerWidget {
  final VoidCallback onTap;
  const LanguageChoosePage({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localeCode = ref.watch(localeNotifierProvider).languageCode;
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(),
          Text(
            "Для удобного использования приложения, выберите язык",
            style: context.textTheme.bodyMedium?.copyWith(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          const Gap(20),
          ListTile(
            onTap: () {
              ref.read(localeNotifierProvider.notifier).changeLanguage(AppLocale.russian);
            },
            title: const Text("Русский"),
            leading: CommonSvgPicture(Assets.icons.russianIcon),
            trailing: "ru" == localeCode ? const Icon(Icons.check) : null,
          ),
          ListTile(
            onTap: () {
              ref.read(localeNotifierProvider.notifier).changeLanguage(AppLocale.uzbek);
            },
            title: const Text("O'zbek"),
            leading: CommonSvgPicture(Assets.icons.uzbIcon),
            trailing: "uz" == localeCode ? const Icon(Icons.check) : null,
          ),
          ListTile(
            onTap: () {
              ref.read(localeNotifierProvider.notifier).changeLanguage(AppLocale.english);
            },
            title: const Text("English"),
            leading: CommonSvgPicture(Assets.icons.englishIcon),
            trailing: "en" == localeCode ? const Icon(Icons.check) : null,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: PrimaryButton(title: context.l10n.next, onPress: onTap),
          )
        ],
      ),
    );
  }
}
