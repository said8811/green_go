import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/map/domain/tarif_model.dart';
import 'package:green_go/features/map/shared/providers.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/presentation/helpers/ui_utils.dart';

class TariffWidget extends ConsumerWidget {
  final TarifModel tarif;
  final VoidCallback onTap;
  final bool isSelected;
  const TariffWidget({super.key, required this.tarif, required this.onTap, required this.isSelected});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        ref.read(transportStateProvider.notifier).setTarif(tarif);
        onTap.call();
      },
      child: Ink(
        padding: const EdgeInsets.only(left: 20),
        width: 180,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? context.colorScheme.primary : context.colorScheme.grey.withOpacity(0.3),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
          color: context.colorScheme.grey.withOpacity(0.3),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  tarif.tariffInfo.getTitle(context.l10n.localeName),
                  style: context.textTheme.bodyMedium?.copyWith(fontSize: 16),
                ),
                const Gap(8),
                Text(
                  "${kPriceFormatter.format(tarif.pricePerMinute)} ${tarif.tariffInfo.getUnit(context.l10n.localeName)}",
                  style: context.textTheme.bodyMedium?.copyWith(fontSize: 12),
                ),
              ],
            ),
            const Gap(10),
          ],
        ),
      ),
    );
  }
}
