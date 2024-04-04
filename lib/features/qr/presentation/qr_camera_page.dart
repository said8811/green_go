import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/core/presentation/buttons/primary_button.dart';
import 'package:green_go/features/map/shared/providers.dart';

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
  bool isDetected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  ref
                      .read(transportStateProvider.notifier)
                      .setQr(capture.barcodes[0].rawValue);
                  context.pop();
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
                title: "Raqamni kiritish",
                onPress: () {
                  showModalBottomSheet(
                      context: context, builder: (context) => Container());
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
    super.dispose();
  }
}
