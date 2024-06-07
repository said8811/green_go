import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/map/domain/tarif_model.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExpandedTarifWidget extends ConsumerWidget {
  final TarifModel? tarif;
  final VoidCallback? onClose;
  const ExpandedTarifWidget({
    super.key,
    required this.tarif,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    if (tarif != null) {
      return Column(
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
                  tarif!.tariffInfo.getTitle(l10n.localeName),
                  style: context.textTheme.bodyMedium,
                ),
              ),
            ),
            leading: onClose != null
                ? const Icon(
                    Icons.arrow_back_ios,
                    size: 18,
                  )
                : null,
          ),
          const Gap(10),
          if (tarif!.tariffInfo.getDescription(l10n.localeName).isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                tarif!.tariffInfo.getDescription(l10n.localeName),
                style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              separatorBuilder: (context, index) => const Divider(),
              shrinkWrap: true,
              itemCount: tarif!.tariffFields.length,
              itemBuilder: (context, index) {
                final field = tarif!.tariffFields[index];
                return Row(
                  children: [
                    Text(
                      field.getName(l10n.localeName),
                      style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    Text(
                      field.price.toString(),
                      style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400, fontSize: 18),
                    ),
                    const Gap(5),
                    Text(
                      field.getUnit(l10n.localeName),
                      style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400, fontSize: 18),
                    ),
                  ],
                );
              }),
        ],
      );
    } else {
      return const SizedBox();
    }
  }
}
