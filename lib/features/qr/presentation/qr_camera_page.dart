import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/core/presentation/buttons/primary_button.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/qr/presentation/widgets/enter_qr_moddal_view.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import 'widgets/qr_camera_overlay.dart';

class QrCameraPage extends ConsumerStatefulWidget {
  const QrCameraPage({super.key});

  @override
  ConsumerState<QrCameraPage> createState() => _QrCameraPageState();
}

class _QrCameraPageState extends ConsumerState<QrCameraPage> {
  final cameraController = MobileScannerController();
  final textController = TextEditingController();
  bool isDetected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            MobileScanner(
              controller: cameraController,
              onDetect: (capture) {
                if (!isDetected) {
                  setState(() {
                    isDetected = true;
                  });
                  context.pop(capture.barcodes[0].rawValue);
                }
              },
            ),
            QRScannerOverlay(overlayColour: Colors.black.withOpacity(0.3)),
            Positioned(
              top: 30,
              left: 30,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                    )),
              ),
            ),
            Positioned(
              bottom: 100,
              left: 20,
              right: 20,
              child: PrimaryButton(
                title: context.l10n.enterNumber,
                childStyle: context.textTheme.bodyMedium,
                color: Colors.white,
                onPress: () async {
                  await showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return EnterQrModdal(textController: textController);
                    },
                    isScrollControlled: true,
                  ).then((value) => context.pop(value));
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    cameraController.dispose();
    textController.dispose();
    super.dispose();
  }
}
