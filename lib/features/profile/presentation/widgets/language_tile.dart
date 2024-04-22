import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../services/localization/application/locale_notifier.dart';
import '../../../../services/localization/shared/providers.dart';

class LanguageTile extends ConsumerWidget {
  final AppLocale locale;
  final String languageCode;
  const LanguageTile({
    super.key,
    required this.locale,
    required this.languageCode,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      onTap: () {
        ref
            .read(localeNotifierProvider.notifier)
            .changeLanguage(locale)
            .then((value) => Navigator.pop(context));
      },
      title: Text(locale.name),
      trailing: languageCode == languageCode ? const Icon(Icons.check) : null,
    );
  }
}
