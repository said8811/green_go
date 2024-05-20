import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/core/presentation/buttons/primary_button.dart';
import 'package:green_go/features/core/presentation/widgets/cached_image.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/map/application/transport_notifier.dart';
import 'package:green_go/features/map/presentation/widgets/expanded_tarif_widget.dart';
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
  bool isTarif = false;
  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final reference = ref.watch(referenceNotifierProvider).data!;
    final state = ref.watch(transportStateProvider);
    final books = ref.watch(ridesNotifierProvider);
    if (state.transport?.book != null) {
      return const TransportBookWidget();
    } else {
      if (state.transport != null) {
        return SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200]!,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey[300]!),
                      ),
                      child: state.transport!.image.isEmpty
                          ? Assets.images.examplePic1.image(width: 90)
                          : CachedImage(
                              state.transport!.image,
                              width: 70,
                              usePlaceHolder: true,
                              placeHolderWidth: 70,
                              placeHolderHeight: 70,
                            ),
                    ),
                    const Gap(12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          state.transport!.getTitle(context.l10n.localeName),
                          style: context.textTheme.bodyMedium,
                        ),
                        const Gap(10),
                        Text(
                          state.transport!.distance < 1
                              ? "${state.transport!.distance * 1000} m"
                              : "${state.transport!.distance} km",
                          style: context.textTheme.bodyMedium?.copyWith(color: Colors.grey, fontSize: 12),
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
              ),
              const Divider(),
              const Gap(10),
              if (!isTarif)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    context.l10n.chooseTariff,
                    style: textTheme.bodyMedium,
                  ),
                ),
              const Gap(15),
              SizedBox(
                height: isTarif ? null : 65,
                child: isTarif
                    ? ExpandedTarifWidget(
                        tarif: state.selectedTarif,
                        onClose: () {
                          setState(() {
                            isTarif = false;
                          });
                        },
                      )
                    : state.transport?.tariffs.isNotEmpty ?? false
                        ? ListView.separated(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              final tarif = state.transport!.tariffs[index];
                              return TariffWidget(
                                tarif: tarif,
                                onTap: () {
                                  setState(() {
                                    isTarif = true;
                                  });
                                },
                              );
                            },
                            separatorBuilder: (i, _) => const Gap(8),
                            itemCount: state.transport!.tariffs.length)
                        : Text(
                            "Tariflar hozircha mavjud emas qayta urinib koring",
                            style: context.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
              ),
              const Gap(22),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                        child: PrimaryButton(
                      title: context.l10n.book,
                      isLoading: state.actionState == TransportActionEnum.booking,
                      onPress: () {
                        if (books.books.isEmpty) {
                          ref.read(transportStateProvider.notifier).book(state.transport!.id).then((value) {
                            context.pop();
                            ref.read(ridesNotifierProvider.notifier).getRides();
                          });
                        } else {
                          Fluttertoast.showToast(msg: "Sizda band qilingan velik bor");
                        }
                      },
                      color: context.colorScheme.grey,
                      textColor: Colors.black,
                      childStyle: textTheme.labelSmall?.copyWith(fontSize: 16),
                    )),
                    if (isTarif) ...[
                      const Gap(20),
                      Expanded(
                        child: PrimaryButton(
                          title: context.l10n.rent,
                          onPress: () {
                            if (books.rides.isEmpty) {
                              ref
                                  .read(transportStateProvider.notifier)
                                  .start(
                                    ref.watch(locationStateProvider)!.latitude,
                                    ref.watch(locationStateProvider)!.longitude,
                                    state.transport!.qrCode,
                                    reference.regionId,
                                  )
                                  .then((value) {
                                if (value) {
                                  ref.read(ridesNotifierProvider.notifier).getRides();
                                  context.pop();
                                }
                              });
                            } else {
                              Fluttertoast.showToast(msg: "Sizda ijarada velik bor");
                            }
                          },
                          isLoading: state.actionState == TransportActionEnum.starting,
                        ),
                      )
                    ]
                  ],
                ),
              ),
              const Gap(20)
            ],
          ),
        );
      } else {
        return const SizedBox(
          height: 220,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    widget.onDispose();
    super.dispose();
  }
}
