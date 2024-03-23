import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/presentation/buttons/primary_button.dart';
import 'package:green_go/features/core/presentation/helpers/ui_utils.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/map/application/rides_notifier.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../gen/assets.gen.dart';
import '../../../core/presentation/widgets/common_svg_picture.dart';
import '../../shared/providers.dart';

class TransportActionsView extends HookConsumerWidget {
  const TransportActionsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = context.textTheme;
    final state = ref.watch(ridesNotifierProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: state.rides.isNotEmpty
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      context.l10n.productPrice(kPriceFormatter
                          .format(state.rides[0].pricePerMinute)),
                      style: textTheme.bodyMedium?.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "00:00",
                      style: textTheme.bodyMedium?.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "0 km",
                      style: textTheme.bodyMedium?.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const Gap(10),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: context.colorScheme.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey[300]!),
                        ),
                        child: Assets.images.bikey.image(width: 70),
                      ),
                      const Gap(20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Velosaped yoqilgan",
                            style: textTheme.bodyMedium,
                          ),
                          const Gap(10),
                          Row(
                            children: [
                              CommonSvgPicture(Assets.icons.qrCode),
                              const Gap(8),
                              Text(
                                state.rides[0].qrCode,
                                style: textTheme.bodyMedium?.copyWith(
                                    color: context.colorScheme.primary),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Gap(12),
                Row(
                  children: [
                    if (state.actionState == RideAction.pause) ...[
                      Expanded(
                        child: PrimaryButton(
                          title: "Yoqish",
                          isLoading: state.actionState == RideAction.turningOn,
                          leading: CommonSvgPicture(Assets.icons.continueIcon),
                          onPress: () {},
                          childStyle: textTheme.labelSmall
                              ?.copyWith(fontSize: 16, color: Colors.white),
                        ),
                      ),
                      const Gap(20),
                    ],
                    if (state.actionState == RideAction.pure ||
                        state.actionState == RideAction.pausing) ...[
                      Expanded(
                        child: PrimaryButton(
                          title: "Pauza",
                          isLoading: state.actionState == RideAction.pausing,
                          onPress: () {
                            ref.read(ridesNotifierProvider.notifier).pause();
                          },
                          color: context.colorScheme.grey.withOpacity(0.3),
                          childStyle: textTheme.labelSmall?.copyWith(
                            fontSize: 16,
                          ),
                          leading: CommonSvgPicture(Assets.icons.pouse),
                        ),
                      ),
                      const Gap(20),
                    ],
                    Expanded(
                      child: PrimaryButton(
                        title: "Yakunlash",
                        onPress: () {},
                        isLoading: state.actionState == RideAction.stoping,
                        color: context.colorScheme.textColor.withOpacity(0.7),
                        childStyle: textTheme.labelSmall?.copyWith(
                          fontSize: 16,
                          color: context.colorScheme.surface,
                        ),
                        leading: CommonSvgPicture(Assets.icons.redDot),
                      ),
                    ),
                  ],
                )
              ],
            )
          : state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : state.error != null
                  ? Center(
                      child: Text(state.error.toString()),
                    )
                  : const SizedBox(),
    );
  }
}
