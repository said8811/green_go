import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/auth/shared/providers.dart';
import 'package:green_go/features/core/presentation/buttons/primary_button.dart';
import 'package:green_go/features/core/presentation/components/common_appbar.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/profile/presentation/widgets/language_tile.dart';
import 'package:green_go/features/profile/shared/providers.dart';
import 'package:green_go/services/localization/application/locale_notifier.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:green_go/services/localization/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authNotifierProvider.notifier).user;
    final locale = ref.watch(localeNotifierProvider);
    final state = ref.watch(profileNotifierProvider);
    final txtTheme = context.textTheme;
    final isNotify = useState(false);
    final nameValue = useState("");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(
        title: context.l10n.settings,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.l10n.personal,
                style: txtTheme.bodyMedium?.copyWith(fontSize: 20),
              ),
              const Gap(15),
              TextFormField(
                initialValue: user?.phone,
                style:
                    txtTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w400),
                inputFormatters: [
                  PhoneInputFormatter(
                    defaultCountryCode: 'uz',
                  ),
                ],
                decoration: InputDecoration(
                    label: Text(
                  context.l10n.phoneNumber,
                  style: txtTheme.labelSmall?.copyWith(
                      fontSize: 16, color: context.colorScheme.greyDark),
                )),
                enabled: false,
              ),
              const Gap(20),
              TextFormField(
                initialValue: state.value?.name,
                style: txtTheme.bodyMedium,
                onChanged: (value) {
                  nameValue.value = value;
                },
                decoration: InputDecoration(
                  label: Text(
                    context.l10n.yourName,
                    style: txtTheme.labelSmall?.copyWith(
                        color: context.colorScheme.greyDark, fontSize: 16),
                  ),
                ),
              ),
              const Gap(60),
              Text(
                context.l10n.notifications,
                style: txtTheme.bodyMedium?.copyWith(fontSize: 20),
              ),
              const Gap(15),
              Row(
                children: [
                  Text(
                    context.l10n.sendNotifications,
                    style: txtTheme.labelSmall?.copyWith(fontSize: 16),
                  ),
                  const Spacer(),
                  CupertinoSwitch(
                    value: isNotify.value,
                    onChanged: (v) {
                      isNotify.value = v;
                    },
                  )
                ],
              ),
              const Gap(40),
              Text(
                context.l10n.language,
                style: txtTheme.bodyMedium?.copyWith(fontSize: 20),
              ),
              const Gap(15),
              ListTile(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                LanguageTile(
                                    locale: AppLocale.uzbek,
                                    languageCode: "uz"),
                                Gap(5),
                                LanguageTile(
                                    locale: AppLocale.russian,
                                    languageCode: "ru"),
                                Gap(5),
                                LanguageTile(
                                    locale: AppLocale.english,
                                    languageCode: "en")
                              ],
                            ),
                          ));
                },
                title: Text(context.l10n.localeName == "uz"
                    ? AppLocale.uzbek.name
                    : context.l10n.localeName == "ru"
                        ? AppLocale.russian.name
                        : AppLocale.english.name),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: PrimaryButton(
            isLoading: ref.watch(updateProfileProvider).isLoading,
            title: context.l10n.submit,
            onPress: () {
              ref
                  .read(updateProfileProvider.notifier)
                  .updateProfile(nameValue.value.trim(), locale.languageCode)
                  .then(
                    (value) => ref
                        .read(profileNotifierProvider.notifier)
                        .getProfile()
                        .then((value) => context.pop()),
                  );
            }),
      ),
    );
  }
}
