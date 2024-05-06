import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/map/application/transport_notifier.dart';
import 'package:green_go/features/map/presentation/widgets/expanded_tarif_widget.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../services/location/shared/providers.dart';
import '../../../core/presentation/buttons/primary_button.dart';
import '../../../core/presentation/helpers/modal_helper.dart';
import '../../../core/presentation/helpers/ui_utils.dart';
import '../../../core/presentation/widgets/common_svg_picture.dart';
import '../../../splash/shared/providers.dart';
import '../../shared/providers.dart';
import 'tarif_widget.dart';

class TransportBookWidget extends HookConsumerWidget {
  const TransportBookWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final textTheme = context.textTheme;
    final state = ref.watch(ridesNotifierProvider);
    final isTarif = useState(false);
    final timer = ref.watch(booksTimerNotifierProvider);
    final reference = ref.watch(referenceNotifierProvider).data!;
    useEffect(() {
      if (state.books.isNotEmpty && timer == 0) {
        ref.read(booksTimerNotifierProvider.notifier).getTime(DateTime.parse(state.books[0].finishAt).toLocal());
      }
      return null;
    });
    ref.listen(ridesNotifierProvider, (previous, next) {
      if (previous?.error == null && next.error != null) {
        showErrorDialog(context, failure: next.error)
            .then((value) => ref.read(transportStateProvider.notifier).cleanError());
      }
    });
    ref.listen(booksTimerNotifierProvider, (previous, next) {
      if (next < 0) {
        Navigator.pop(context);
        return;
      }
    });
    return state.books.isNotEmpty
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Row(
                  children: [
                    Text(
                      context.l10n.bookingTime,
                      style: textTheme.bodyMedium,
                    ),
                    const Spacer(),
                    Text(getTime(timer), style: textTheme.bodyMedium),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(14),
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    color: context.colorScheme.grey.withOpacity(0.3), borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Assets.images.bikey.image(width: 70),
                    ),
                    const Gap(14),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(context.l10n.yourBicyle),
                        const Gap(12),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonSvgPicture(Assets.icons.qrCode),
                            const Gap(8),
                            Text(
                              state.books[0].qrCode,
                              style: context.textTheme.bodyMedium?.copyWith(
                                fontSize: 14,
                                color: context.colorScheme.primary,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Gap(20),
              if (state.transport?.tariffs.isNotEmpty ?? false)
                SizedBox(
                  height: isTarif.value ? null : 65,
                  child: isTarif.value
                      ? ExpandedTarifWidget(
                          tarif: ref.watch(transportStateProvider).selectedTarif,
                          onClose: () {
                            isTarif.value = false;
                          })
                      : ListView.separated(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) {
                            final tarif = state.transport!.tariffs[index];
                            return TariffWidget(
                              tarif: tarif,
                              onTap: () {
                                isTarif.value = true;
                              },
                            );
                          },
                          separatorBuilder: (i, _) => const Gap(8),
                          itemCount: state.transport!.tariffs.length),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Row(
                  children: [
                    if (!isTarif.value)
                      Expanded(
                          child: PrimaryButton(
                        title: context.l10n.cancel,
                        isLoading: ref.watch(transportStateProvider).actionState == TransportActionEnum.cancelingBook,
                        onPress: () {
                          ref.read(transportStateProvider.notifier).cancelBook(state.transport!.id).then((value) {
                            ref.read(ridesNotifierProvider.notifier).getRides().then((value) => context.pop());
                          });
                        },
                        color: context.colorScheme.grey,
                        textColor: Colors.black,
                        childStyle: textTheme.labelSmall?.copyWith(fontSize: 16),
                      )),
                    if (isTarif.value)
                      Expanded(
                        child: PrimaryButton(
                          title: context.l10n.rent,
                          isLoading: ref.watch(transportStateProvider).actionState == TransportActionEnum.starting,
                          onPress: () {
                            if (state.rides.isEmpty) {
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
                        ),
                      )
                  ],
                ),
              )
            ],
          )
        : const SizedBox(
            height: 220,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
  }
}
