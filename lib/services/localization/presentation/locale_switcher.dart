import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../features/core/presentation/buttons/app_icon_button.dart';
import '../../../features/core/presentation/buttons/primary_button.dart';
import '../../../features/core/presentation/widgets/common_bottom_sheet.dart';
import '../../../features/core/presentation/widgets/common_list_tile.dart';
import '../../../features/core/presentation/widgets/selected_circle_widget.dart';
import '/gen/assets.gen.dart';

import '../application/locale_notifier.dart';
import '../shared/providers.dart';

class LanguageSwitchBtn extends StatelessWidget {
  const LanguageSwitchBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return AppIconButton(
      onPressed: () => showModalBottomSheet(
        context: context,
        builder: (context) => const CommonBottomSheet(
          useSafeArea: false,
          title: 'Выберите язык',
          child: LanguageSwitchView(),
        ),
      ),
      iconPath: Assets.icons.global,
    );
  }
}

class LanguageSwitchView extends HookConsumerWidget {
  const LanguageSwitchView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = useState(ref.watch(localeNotifierProvider));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Gap(20),
        ...AppLocale.values.map(
          (e) => CommonListTile(
            onTap: () => selected.value = AppLocale.fromAppLocale(e),
            title: e.name,
            customTrailing: SelectedCircleWidget(
                isSelected: selected.value == AppLocale.fromAppLocale(e)),
          ),
        ),
        const Gap(20),
        Container(
          decoration: BoxDecoration(color: context.colorScheme.card),
          child: SafeArea(
            minimum:
                const EdgeInsets.only(bottom: 20, top: 20, right: 20, left: 20),
            child: PrimaryButton(
              color: context.colorScheme.primary,
              title: 'Подтвердить',
              onPress: () => ref
                  .read(localeNotifierProvider.notifier)
                  .changeLanguage(AppLocale.fromLocale(selected.value))
                  .then((value) => context.pop()),
            ),
          ),
        ),
      ],
    );
  }
}
