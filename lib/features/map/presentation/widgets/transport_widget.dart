import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/core/presentation/buttons/primary_button.dart';
import 'package:green_go/features/core/presentation/helpers/ui_utils.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/map/application/transport_notifier.dart';
import 'package:green_go/features/splash/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../services/location/shared/providers.dart';
import '../../../core/presentation/widgets/common_svg_picture.dart';
import '../../shared/providers.dart';

class TransportWidget extends HookConsumerWidget {
  const TransportWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = context.textTheme;
    final selectedTarif = useState(1);
    final referemce = ref.watch(referenceNotifierProvider).value!;
    final state = ref.watch(transportStateProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: state.transport != null
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      decoration: BoxDecoration(
                        color: Colors.grey[200]!,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey[300]!),
                      ),
                      child: Assets.images.bikey.image(width: 70),
                    ),
                    const Gap(12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          state.transport!.nameRu,
                          style: context.textTheme.bodyMedium,
                        ),
                        const Gap(10),
                        Text(
                          "${state.transport!.distance.toInt()} km",
                          style: context.textTheme.bodyMedium
                              ?.copyWith(color: Colors.grey, fontSize: 12),
                        )
                      ],
                    ),
                    const Spacer(),
                    CommonSvgPicture(Assets.icons.qrCode),
                    const Gap(8),
                    Text(
                      state.transport!.qrCode,
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontSize: 14,
                        color: context.colorScheme.primary,
                      ),
                    ),
                  ],
                ),
                const Divider(),
                const Gap(10),
                Text(
                  "Tariflardan birini tanlang",
                  style: textTheme.bodyMedium,
                ),
                const Gap(8),
                SizedBox(
                  height: 65,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        final tarif = state.transport!.tariffs[index];
                        return InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: () {
                            selectedTarif.value = tarif.id;
                          },
                          child: Ink(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: selectedTarif.value ==
                                      state.transport!.tariffs[index].id
                                  ? Border.all(
                                      color: context.colorScheme.primary)
                                  : null,
                              color: selectedTarif.value ==
                                      state.transport!.tariffs[index].id
                                  ? context.colorScheme.primary.withOpacity(0.3)
                                  : context.colorScheme.grey.withOpacity(0.3),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  tarif.nameRu,
                                  style: textTheme.bodyMedium
                                      ?.copyWith(fontSize: 16),
                                ),
                                const Gap(8),
                                Text(
                                  "${kPriceFormatter.format(tarif.pricePerMinute)} so'm/min",
                                  style: textTheme.bodyMedium
                                      ?.copyWith(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (i, _) => const Gap(8),
                      itemCount: state.transport!.tariffs.length),
                ),
                const Gap(12),
                Row(
                  children: [
                    // if (state.actionState == TransportActionEnum.pouse) ...[
                    //   Expanded(
                    //     child: PrimaryButton(
                    //       title: "Yoqish",
                    //       leading: CommonSvgPicture(Assets.icons.continueIcon),
                    //       onPress: () {},
                    //       childStyle: textTheme.labelSmall
                    //           ?.copyWith(fontSize: 16, color: Colors.white),
                    //     ),
                    //   ),
                    //   const Gap(20),
                    // ],
                    // if (state.actionState == TransportActionEnum.start) ...[
                    //   Expanded(
                    //     child: PrimaryButton(
                    //       title: "Pauza",
                    //       onPress: () {},
                    //       color: context.colorScheme.grey.withOpacity(0.3),
                    //       childStyle: textTheme.labelSmall?.copyWith(
                    //         fontSize: 16,
                    //       ),
                    //       leading: CommonSvgPicture(Assets.icons.pouse),
                    //     ),
                    //   ),
                    //   const Gap(20),
                    // ],
                    Expanded(
                        child: PrimaryButton(
                      title: "Band qilish",
                      onPress: () {},
                      color: context.colorScheme.grey.withOpacity(0.3),
                      textColor: Colors.black,
                      childStyle: textTheme.labelSmall?.copyWith(fontSize: 16),
                    )),
                    const Gap(20),
                    Expanded(
                      child: PrimaryButton(
                        title: "Ijaraga olish",
                        onPress: () {
                          if (selectedTarif.value != -1) {
                            ref
                                .read(transportStateProvider.notifier)
                                .start(
                                    ref.watch(locationStateProvider)!.latitude,
                                    ref.watch(locationStateProvider)!.longitude,
                                    state.transport!.qrCode,
                                    referemce.regionId,
                                    selectedTarif.value)
                                .then((value) {
                              if (value) {
                                context.pop();
                              }
                            });
                          } else {
                            Fluttertoast.showToast(msg: "Tarifni tanlang");
                          }
                        },
                        isLoading:
                            state.actionState == TransportActionEnum.starting,
                      ),
                    )
                  ],
                )
              ],
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
