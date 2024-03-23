import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:green_go/features/core/presentation/widgets/common_svg_picture.dart';
import 'package:green_go/gen/assets.gen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import 'widgets/qr_camera_overlay.dart';

class QrCameraPage extends HookConsumerWidget {
  const QrCameraPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cameraController = useState(MobileScannerController());
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            MobileScanner(
              controller: cameraController.value,
              onDetect: (capture) {},
            ),
            QRScannerOverlay(overlayColour: Colors.black.withOpacity(0.3)),
            Positioned(
              top: 30,
              left: 30,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.black.withOpacity(0.3),
                ),
                child: CommonSvgPicture(Assets.icons.cancel),
              ),
            )
          ],
        ),
      ),
    );
  }
}
