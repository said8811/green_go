import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/presentation/components/common_appbar.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/gen/assets.gen.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BalancePage extends ConsumerWidget {
  const BalancePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = context.textTheme;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(
        title: context.l10n.yourBalance,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.l10n.myBalance,
                      style: textTheme.labelSmall?.copyWith(
                          fontSize: 14, color: context.colorScheme.greyDark),
                    ),
                    const Gap(8),
                    Text(context.l10n.productPrice(0.00)),
                  ],
                ),
                const Spacer(),
                Assets.images.wallet.image(width: 80),
              ],
            ),
          ),
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hisobni to‘ldirish",
                style: textTheme.bodyMedium?.copyWith(fontSize: 20),
              ),
              const Gap(20),
              Wrap(
                spacing: 15,
                runSpacing: 20,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: context.colorScheme.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kartalar",
                          style: textTheme.bodyMedium,
                        ),
                        const Gap(10),
                        Text(
                          "UZCard *6649",
                          style: textTheme.bodyMedium?.copyWith(
                            color: context.colorScheme.greyDark,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                        color: context.colorScheme.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Payme",
                          style: textTheme.bodyMedium,
                        ),
                        const Gap(10),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Assets.images.payme.image(width: 60))
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: context.colorScheme.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Click",
                          style: textTheme.bodyMedium,
                        ),
                        const Gap(10),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Assets.images.click.image(width: 60))
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
