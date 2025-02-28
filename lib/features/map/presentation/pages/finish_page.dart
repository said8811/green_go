import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/core/presentation/buttons/primary_button.dart';
import 'package:green_go/features/core/presentation/components/common_appbar.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/map/application/rides_notifier.dart';
import 'package:green_go/features/splash/shared/providers.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:green_go/services/location/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/presentation/widgets/common_expandable_panel.dart';
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
    final l10n = context.l10n;
    final state = ref.watch(ridesNotifierProvider);
    ref.listen(ridesNotifierProvider, (previous, next) {
      if (previous?.actionState != RideAction.stop && next.actionState == RideAction.stop) {
        ref.read(referenceNotifierProvider.notifier).getData();
        context.pop(true);
        return;
      }
    });
    return Scaffold(
      appBar: CommonAppBar(
        title: context.l10n.finish,
      ),
      body: state.rides.isNotEmpty
          ? SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.camera),
                    onTap: _getFromCamera,
                    title: Text(
                      context.l10n.takeApicDialog,
                      style: context.textTheme.bodyMedium,
                    ),
                  ),
                  if (state.imgPath != null && state.imgPath!.isNotEmpty)
                    CommonExpandablePanel(
                        symPadding: 20,
                        title: context.l10n.viewPhoto,
                        inkWellBorderRadius: 0,
                        child: SizedBox(
                          height: 500,
                          child: Center(
                            child: Image.file(
                              File(state.imgPath!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ))
                ],
              ),
            )
          : SizedBox(
              child: Center(
                child: Text(
                  context.l10n.rideFinished,
                  style: context.textTheme.bodyMedium?.copyWith(fontSize: 20),
                ),
              ),
            ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              separatorBuilder: (context, index) => const Divider(),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: state.rides[0].tariff!.tariffFields.length,
              itemBuilder: (context, index) {
                final field = state.rides[0].tariff!.tariffFields[index];
                return Row(
                  children: [
                    Text(
                      field.getName(l10n.localeName),
                      style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
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
          Padding(
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
        ],
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
