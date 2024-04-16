import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/core/presentation/components/common_appbar.dart';
import 'package:green_go/features/core/presentation/helpers/modal_helper.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/profile/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class VerifyCardPage extends HookConsumerWidget {
  const VerifyCardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final numberController = useTextEditingController();
    ref.listen(addCardProvider, (previous, next) {
      if (next.error != null) {
        showErrorDialog(context, failure: next.error);
      }
      if (next.isVerified && next.error == null) {
        ref
            .read(cardsNotifierProvider.notifier)
            .getCards()
            .then((value) => context.pop());
      }
    });
    return KeyboardDismisser(
      child: Scaffold(
        appBar: const CommonAppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kodni kiriting",
                style: context.textTheme.bodyMedium?.copyWith(fontSize: 24),
              ),
              const Gap(20),
              Text(
                "Telefon raqamini tasdiqlash uchun 4-raqamli kod +998 91 476 9070 ga yuborildi",
                style: context.textTheme.labelSmall?.copyWith(fontSize: 14),
                textAlign: TextAlign.left,
              ),
              const Gap(100),
              Center(
                child: SizedBox(
                  width: 148,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    controller: numberController,
                    style: context.textTheme.bodyMedium?.copyWith(fontSize: 24),
                    onChanged: (value) {
                      if (value.length == 7) {
                        ref
                            .read(addCardProvider.notifier)
                            .verifyCard(value.replaceAll("-", ""));
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
              const Spacer(),
              Text(
                "Agar kod kelmasa, 57 soniyada yangisi olishingiz mumkin",
                style: context.textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              const Gap(6),
            ],
          ),
        ),
      ),
    );
  }
}
