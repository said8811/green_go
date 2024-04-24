import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../core/presentation/buttons/primary_button.dart';
import '../../../map/shared/providers.dart';

class EnterQrModdal extends ConsumerWidget {
  final TextEditingController textController;
  const EnterQrModdal({
    super.key,
    required this.textController,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomPadding = MediaQuery.of(context).viewInsets.bottom;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: bottomPadding, // Use the calculated bottom padding here
          left: 20,
          right: 20,
          top: 20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.l10n.enterNumber,
              style: context.textTheme.bodyMedium,
            ),
            const Gap(50),
            Center(
              child: SizedBox(
                width: 148,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  controller: textController,
                  style: context.textTheme.bodyMedium?.copyWith(fontSize: 24),
                  onChanged: (value) {
                    if (value.length == 7) {
                      ref
                          .read(transportStateProvider.notifier)
                          .setQr(textController.text.trim());
                      Navigator.of(context).pop(textController.text.trim());
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
                      hintStyle: context.textTheme.bodyMedium?.copyWith(
                          fontSize: 24, color: context.colorScheme.greyDark),
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
                    title: context.l10n.enter,
                    onPress: () {
                      Navigator.of(context).pop(textController.text.trim());
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
  }
}
