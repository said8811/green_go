import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/core/presentation/buttons/primary_button.dart';
import 'package:green_go/features/core/presentation/components/common_appbar.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/map/application/rides_notifier.dart';
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
      if (previous?.actionState != RideAction.stop &&
          next.actionState == RideAction.stop) {
        ref.read(ridesNotifierProvider.notifier).getRides();
        context.pop();
        return;
      }
    });
    return Scaffold(
      appBar: const CommonAppBar(
        title: "Yakunlash",
      ),
      body: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.camera),
            onTap: _getFromCamera,
            title: Text(
              "Kameradan rasmga olish",
              style: context.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: PrimaryButton(
            title: "Yakunlash",
            isLoading: state.actionState == RideAction.stoping,
            onPress: () {
              if (state.imgPath != null) {
                ref
                    .read(ridesNotifierProvider.notifier)
                    .finish(latlong?.latitude, latlong?.longitude);
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
