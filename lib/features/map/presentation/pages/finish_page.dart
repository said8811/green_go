import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/core/presentation/buttons/primary_button.dart';
import 'package:green_go/features/core/presentation/components/common_appbar.dart';
import 'package:green_go/features/core/presentation/helpers/ui_utils.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/map/application/rides_notifier.dart';
import 'package:green_go/features/splash/shared/providers.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:green_go/services/location/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../shared/providers.dart';

class FinishPage extends ConsumerStatefulWidget {
  const FinishPage({super.key});

  @override
  ConsumerState<FinishPage> createState() => _FinishPageState();
}

class _FinishPageState extends ConsumerState<FinishPage> {
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    final latlong = ref.watch(locationStateProvider);
    final state = ref.watch(ridesNotifierProvider);
    ref.listen(ridesNotifierProvider, (previous, next) {
      if (previous?.actionState != RideAction.stop && next.actionState == RideAction.stop) {
        ref.read(referenceNotifierProvider.notifier).getData().then((value) => context.pop(true));
        return;
      }
    });
    return Scaffold(
      appBar: CommonAppBar(
        title: context.l10n.finish,
      ),
      body: state.rides.isNotEmpty
          ? Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.camera),
                  onTap: _getFromCamera,
                  title: Text(
                    context.l10n.takeApicDialog,
                    style: context.textTheme.bodyMedium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        context.l10n.startPrice,
                        style: context.textTheme.bodyMedium,
                      ),
                      const Spacer(),
                      Text(
                        context.l10n.productPrice(kPriceFormatter.format(state.rides[0].startPrice)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        context.l10n.perMinute,
                        style: context.textTheme.bodyMedium,
                      ),
                      const Spacer(),
                      Text(context.l10n.productPrice(kPriceFormatter.format(state.rides[0].pricePerMinute)))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        context.l10n.pousePricePerMinute,
                        style: context.textTheme.bodyMedium,
                      ),
                      const Spacer(),
                      Text(context.l10n.productPrice(kPriceFormatter.format(state.rides[0].pausePricePerMinute)))
                    ],
                  ),
                ),
              ],
            )
          : const SizedBox(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: PrimaryButton(
            title: context.l10n.finish,
            isLoading: state.actionState == RideAction.stoping,
            onPress: () {
              if (state.imgPath != null) {
                ref
                    .read(ridesNotifierProvider.notifier)
                    .finish(latitude: latlong?.latitude, longitude: latlong?.longitude);
              }
            }),
      ),
    );
  }

  _getFromCamera() async {
    final XFile? pickedFile = await _picker.pickImage(
      maxWidth: 1920,
      maxHeight: 2000,
      source: ImageSource.camera,
    );
    if (pickedFile != null) {
      if (!mounted) return;
      ref.read(ridesNotifierProvider.notifier).setImagePath(pickedFile.path);
      if (!mounted) return;
      setState(() {});
    }
  }
}
