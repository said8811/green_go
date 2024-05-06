import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/presentation/helpers/ui_utils.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/map/domain/tarif_model.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExpandedTarifWidget extends ConsumerWidget {
  final TarifModel? tarif;
  final VoidCallback onClose;
  const ExpandedTarifWidget({
    super.key,
    required this.tarif,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return tarif != null
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                minLeadingWidth: 10,
                onTap: onClose,
                title: Transform.translate(
                  offset: const Offset(-10, 0),
                  child: Center(
                    child: Text(
                      tarif!.getTitle(context.l10n.localeName),
                      style: context.textTheme.bodyMedium,
                    ),
                  ),
                ),
                leading: const Icon(
                  Icons.arrow_back_ios,
                  size: 18,
                ),
              ),
              const Gap(10),
              if (tarif!.descriptionRu.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    tarif!.descriptionRu,
                    style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      context.l10n.startPrice,
                      style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    Text(
                      context.l10n.productPrice(kPriceFormatter.format(tarif!.startPrice)),
                      style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400, fontSize: 18),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      context.l10n.perMinute,
                      style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    Text(
                      context.l10n.productPrice(kPriceFormatter.format(tarif!.pricePerMinute)),
                      style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400, fontSize: 18),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      context.l10n.pousePricePerMinute,
                      style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    Text(
                      context.l10n.productPrice(kPriceFormatter.format(tarif!.pausePricePerMinute)),
                      style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          )
        : const SizedBox();
  }
}
