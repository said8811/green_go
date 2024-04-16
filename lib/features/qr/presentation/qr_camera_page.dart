import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/core/presentation/buttons/primary_button.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/map/shared/providers.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
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
                title: "Raqamni kiritish",
                childStyle: context.textTheme.bodyMedium,
                color: Colors.white,
                onPress: () async {
                  await showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      // Calculate the bottom padding using MediaQuery to accommodate the keyboard
                      final bottomPadding =
                          MediaQuery.of(context).viewInsets.bottom;
                      return SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(
                            bottom:
                                bottomPadding, // Use the calculated bottom padding here
                            left: 20,
                            right: 20,
                            top: 20,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Center(
                                child: SizedBox(
                                  width: 148,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    textInputAction: TextInputAction.next,
                                    controller: textController,
                                    style: context.textTheme.bodyMedium
                                        ?.copyWith(fontSize: 24),
                                    onChanged: (value) {
                                      if (value.length == 7) {
                                        ref
                                            .read(
                                                transportStateProvider.notifier)
                                            .setQr(textController.text.trim());
                                        Navigator.of(context)
                                            .pop(textController.text.trim());
                                      }
                                    },
                                    inputFormatters: [
                                      MaskTextInputFormatter(
                                        mask: '###-### ',
                                        filter: {"#": RegExp(r'[0-9]')},
                                      )
                                    ],
                                    decoration: InputDecoration(
                                        hintText: "000-000",
                                        hintStyle: context.textTheme.bodyMedium
                                            ?.copyWith(
                                                fontSize: 24,
                                                color: context
                                                    .colorScheme.greyDark),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 200),
                              Row(
                                children: [
                                  Expanded(
                                    child: PrimaryButton(
                                      title: "Kiritish",
                                      onPress: () {
                                        ref
                                            .read(
                                                transportStateProvider.notifier)
                                            .setQr(textController.text.trim());
                                        Navigator.of(context)
                                            .pop(textController.text.trim());
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(30),
                            ],
                          ),
                        ),
                      );
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
