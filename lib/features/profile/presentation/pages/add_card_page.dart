import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/domain/failure.dart';
import 'package:green_go/features/core/presentation/buttons/primary_button.dart';
import 'package:green_go/features/core/presentation/components/common_appbar.dart';
import 'package:green_go/features/core/presentation/helpers/modal_helper.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/profile/shared/providers.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddCardPage extends HookConsumerWidget {
  const AddCardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useState(GlobalKey<FormState>());
    final l10n = context.l10n;
    final numberController = useTextEditingController();
    final expireController = useTextEditingController();
    ref.listen(addCardProvider, (previous, next) {
      if (next.error != null) {
        showErrorDialog(context, failure: next.error as Failure);
      }
    });
    return KeyboardDismisser(
      child: Scaffold(
        appBar: CommonAppBar(
          title: context.l10n.addCard,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(40),
              Text(
                l10n.addBankCard,
                style: context.textTheme.bodyMedium?.copyWith(fontSize: 24),
              ),
              const Gap(20),
              Text(
                l10n.addCardDialog,
                style: context.textTheme.labelSmall?.copyWith(fontSize: 14),
              ),
              const Gap(40),
              Text(
                l10n.cardNumber,
                style: context.textTheme.bodySmall,
              ),
              const Gap(6),
              Form(
                key: formKey.value,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      controller: numberController,
                      validator: (value) {
                        if (value?.length != 19) {
                          return "raqamni to'liq kiriting";
                        }
                        return null;
                      },
                      inputFormatters: [
                        MaskTextInputFormatter(
                          mask: '#### #### #### ####',
                          filter: {"#": RegExp(r'[0-9]')},
                        )
                      ],
                      decoration: const InputDecoration(
                        hintText: "0000 0000 0000 0000",
                      ),
                    ),
                    const Gap(20),
                    Text(
                      context.l10n.validityPeriod,
                      style: context.textTheme.bodySmall,
                    ),
                    const Gap(6),
                    Center(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: expireController,
                        validator: (value) {
                          if (value?.length != 5) {
                            return "muddatni to'liq kiriting";
                          }
                          return null;
                        },
                        inputFormatters: [
                          MaskTextInputFormatter(
                            mask: '##/##',
                            filter: {"#": RegExp(r'[0-9]')},
                          )
                        ],
                        decoration: const InputDecoration(
                          hintText: "MM/YY",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20.0),
          child: PrimaryButton(
            isLoading: ref.watch(addCardProvider).isLoading,
            title: context.l10n.addCard,
            onPress: () {
              if (formKey.value.currentState!.validate()) {
                ref.read(addCardProvider.notifier).addCard(numberController.text, expireController.text);
              }
            },
          ),
        ),
      ),
    );
  }
}
