import 'package:flutter/material.dart';
import 'package:green_go/features/core/presentation/helpers/ui_utils.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/map/domain/tarif_model.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExpandedTarifWidget extends ConsumerWidget {
  final TarifModel tarif;
  final VoidCallback onClose;
  const ExpandedTarifWidget({
    super.key,
    required this.tarif,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.sizeOf(context).width * 0.9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  tarif.nameRu,
                  style: context.textTheme.bodyMedium,
                ),
                const Spacer(),
                IconButton(onPressed: onClose, icon: const Icon(Icons.close))
              ],
            ),
            Text(
              tarif.descriptionRu,
              style: context.textTheme.bodyMedium,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  context.l10n.startPrice,
                  style: context.textTheme.bodyMedium,
                ),
                const Spacer(),
                Text(
                  context.l10n
                      .productPrice(kPriceFormatter.format(tarif.startPrice)),
                  style: context.textTheme.bodyMedium,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  context.l10n.perMinute,
                  style: context.textTheme.bodyMedium,
                ),
                const Spacer(),
                Text(
                  context.l10n.productPrice(
                      kPriceFormatter.format(tarif.pricePerMinute)),
                  style: context.textTheme.bodyMedium,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Pauza minutiga",
                  style: context.textTheme.bodyMedium,
                ),
                const Spacer(),
                Text(
                  context.l10n.productPrice(
                      kPriceFormatter.format(tarif.pausePricePerMinute)),
                  style: context.textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
