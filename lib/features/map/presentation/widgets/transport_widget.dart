import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/core/presentation/buttons/primary_button.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/map/application/transport_notifier.dart';
import 'package:green_go/features/map/presentation/widgets/tarif_widget.dart';
import 'package:green_go/features/map/presentation/widgets/transport_booked_view.dart';
import 'package:green_go/features/splash/shared/providers.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../services/location/shared/providers.dart';
import '../../../core/presentation/widgets/common_svg_picture.dart';
import '../../shared/providers.dart';

class TransportWidget extends ConsumerStatefulWidget {
  final VoidCallback onDispose;
  final String qrCode;
  const TransportWidget({
    super.key,
    required this.onDispose,
    required this.qrCode,
  });

  @override
  ConsumerState<TransportWidget> createState() => _TransportWidgetState();
}

class _TransportWidgetState extends ConsumerState<TransportWidget> {
  @override
  void initState() {
    Future.microtask(() {
      ref.read(transportStateProvider.notifier).getTransport(
          ref.watch(locationStateProvider)!.latitude,
          ref.watch(locationStateProvider)!.longitude,
          widget.qrCode);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final reference = ref.watch(referenceNotifierProvider).data!;
    final state = ref.watch(transportStateProvider);
    final books = ref.watch(ridesNotifierProvider);
    return state.transport?.book != null
        ? const TransportBookWidget()
        : Padding(
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
                                "${state.transport!.distance} km",
                                style: context.textTheme.bodyMedium?.copyWith(
                                    color: Colors.grey, fontSize: 12),
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
                        context.l10n.chooseTariff,
                        style: textTheme.bodyMedium,
                      ),
                      const Gap(8),
                      SizedBox(
                        height: 65,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              final tarif = state.transport!.tariffs[index];
                              return TariffWidget(
                                tarif: tarif,
                              );
                            },
                            separatorBuilder: (i, _) => const Gap(8),
                            itemCount: state.transport!.tariffs.length),
                      ),
                      const Gap(12),
                      Row(
                        children: [
                          Expanded(
                              child: PrimaryButton(
                            title: context.l10n.book,
                            isLoading: state.actionState ==
                                TransportActionEnum.booking,
                            onPress: () {
                              if (books.books.isEmpty) {
                                ref
                                    .read(transportStateProvider.notifier)
                                    .book(state.transport!.id)
                                    .then((value) {
                                  context.pop();
                                  ref
                                      .read(ridesNotifierProvider.notifier)
                                      .getRides();
                                });
                              } else {
                                Fluttertoast.showToast(
                                    msg: "Sizda band qilingan velik bor");
                              }
                            },
                            color: context.colorScheme.grey.withOpacity(0.3),
                            textColor: Colors.black,
                            childStyle:
                                textTheme.labelSmall?.copyWith(fontSize: 16),
                          )),
                          const Gap(20),
                          Expanded(
                            child: PrimaryButton(
                              title: context.l10n.rent,
                              onPress: () {
                                if (books.rides.isEmpty) {
                                  ref
                                      .read(transportStateProvider.notifier)
                                      .start(
                                          ref
                                              .watch(locationStateProvider)!
                                              .latitude,
                                          ref
                                              .watch(locationStateProvider)!
                                              .longitude,
                                          state.transport!.qrCode,
                                          reference.regionId,
                                          state.selectedTarif)
                                      .then((value) {
                                    if (value) {
                                      context.pop();
                                      ref
                                          .read(ridesNotifierProvider.notifier)
                                          .getRides();
                                    }
                                  });
                                } else {
                                  Fluttertoast.showToast(
                                      msg: "Sizda ijarada velik bor");
                                }
                              },
                              isLoading: state.actionState ==
                                  TransportActionEnum.starting,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                : state.error != null
                    ? SizedBox(
                        height: 220,
                        child: Center(
                          child: Text(state.error.toString()),
                        ),
                      )
                    : const SizedBox(
                        height: 220,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
          );
  }

  @override
  void dispose() {
    widget.onDispose();
    super.dispose();
  }
}
