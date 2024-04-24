import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/map/domain/tarif_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/presentation/helpers/ui_utils.dart';

class TariffWidget extends ConsumerWidget {
  final VoidCallback onTap;
  final TarifModel tarif;
  final int selectedTarif;
  const TariffWidget(
      {super.key,
      required this.onTap,
      required this.tarif,
      required this.selectedTarif});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: selectedTarif == tarif.id
              ? Border.all(color: context.colorScheme.primary)
              : null,
          color: selectedTarif == tarif.id
              ? context.colorScheme.primary.withOpacity(0.3)
              : context.colorScheme.grey.withOpacity(0.3),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  tarif.nameRu,
                  style: context.textTheme.bodyMedium?.copyWith(fontSize: 16),
                ),
                const Gap(8),
                Text(
                  "${kPriceFormatter.format(tarif.pricePerMinute)} so'm/min",
                  style: context.textTheme.bodyMedium?.copyWith(fontSize: 12),
                ),
              ],
            ),
            const Gap(12),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert_outlined))
          ],
        ),
      ),
    );
  }
}
