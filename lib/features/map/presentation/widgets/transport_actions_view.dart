import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/core/presentation/buttons/primary_button.dart';
import 'package:green_go/features/core/presentation/helpers/modal_helper.dart';
import 'package:green_go/features/core/presentation/helpers/ui_utils.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/map/application/rides_notifier.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:green_go/services/router/constants.dart';
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
    final timer = ref.watch(timerNotifierProvider);
    final pricePerMin = useState(0);

    useEffect(() {
      if (state.rides.isNotEmpty) {
        ref.read(timerNotifierProvider.notifier).getTime(DateTime.parse(state.rides[0].startAt).toLocal());
        pricePerMin.value = timer ~/ 60;
      }
      return;
    });

    ref.listen(timerNotifierProvider, (previous, next) {
      if (next % 60 == 0) {
        pricePerMin.value = next ~/ 60;
      }
    });
    ref.listen(ridesNotifierProvider, (previous, next) {
      if (previous?.error == null && next.error != null) {
        showErrorDialog(context, failure: next.error)
            .then((value) => ref.read(ridesNotifierProvider.notifier).cleanError());
      }
    });

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
                      context.l10n
                          .productPrice(kPriceFormatter.format(state.rides[0].pricePerMinute * pricePerMin.value)),
                      style: textTheme.bodyMedium?.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      getTime(timer),
                      style: textTheme.bodyMedium?.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const Gap(10),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: context.colorScheme.grey.withOpacity(0.2), borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Container(
                        width: 80,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(image: AssetImage(Assets.images.examplePic1.path), fit: BoxFit.cover),
                          border: Border.all(color: Colors.grey[300]!),
                        ),
                      ),
                      const Gap(20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.l10n.bicycleTurnedOn,
                            style: textTheme.bodyMedium,
                          ),
                          const Gap(10),
                          Row(
                            children: [
                              CommonSvgPicture(Assets.icons.qrCode),
                              const Gap(8),
                              Text(
                                state.rides[0].qrCode,
                                style: textTheme.bodyMedium?.copyWith(color: context.colorScheme.primary),
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
                    if (state.actionState == RideAction.pause || state.actionState == RideAction.turningOn) ...[
                      Expanded(
                        child: PrimaryButton(
                          title: context.l10n.turnOn,
                          isLoading: state.actionState == RideAction.turningOn,
                          leading: CommonSvgPicture(Assets.icons.continueIcon),
                          onPress: () {
                            ref.read(ridesNotifierProvider.notifier).turnOn();
                          },
                          childStyle: textTheme.labelSmall?.copyWith(fontSize: 16, color: Colors.white),
                        ),
                      ),
                      const Gap(20),
                    ],
                    if (state.actionState == RideAction.pure || state.actionState == RideAction.pausing) ...[
                      Expanded(
                        child: PrimaryButton(
                          title: context.l10n.pouse,
                          isLoading: state.actionState == RideAction.pausing,
                          onPress: () {
                            ref.read(ridesNotifierProvider.notifier).pause();
                          },
                          color: const Color(0xFFF6F6F6),
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
                        title: context.l10n.finish,
                        onPress: () {
                          context.push(AppRoute.finishPage.routePathWithSlash).then((value) {
                            if (value == true) {
                              ref.read(timerNotifierProvider.notifier).cancel();
                              Navigator.pop(context, true);
                            }
                          });
                        },
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
