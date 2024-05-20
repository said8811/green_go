import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/domain/failure.dart';
import 'package:green_go/features/core/presentation/buttons/primary_button.dart';
import 'package:green_go/features/core/presentation/components/common_appbar.dart';
import 'package:green_go/features/core/presentation/helpers/modal_helper.dart';
import 'package:green_go/features/core/presentation/helpers/ui_utils.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/profile/domain/card_model.dart';
import 'package:green_go/features/profile/presentation/widgets/cards_view.dart';
import 'package:green_go/gen/assets.gen.dart';

import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../../shared/providers.dart';

class BalancePage extends ConsumerStatefulWidget {
  const BalancePage({super.key});

  @override
  ConsumerState<BalancePage> createState() => _BalancePageState();
}

class _BalancePageState extends ConsumerState<BalancePage> {
  TextEditingController controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  CardModel? selectedType;
  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final state = ref.watch(profileNotifierProvider);
    final cards = ref.watch(cardsNotifierProvider);
    final selectedType = ref.watch(selectedCardProvider);
    ref.listen(invoiceNotifier, (previous, next) {
      if (next.error != null) {
        showErrorDialog(context, failure: next.error as Failure);
      }
    });
    return KeyboardDismisser(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CommonAppBar(
          title: context.l10n.yourBalance,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    kPriceFormatter.format(state.maybeWhen(orElse: () => 0.0, data: (data) => data.balance)),
                    style: context.textTheme.bodyMedium?.copyWith(fontSize: 24),
                  ),
                  const Gap(10),
                  Text(
                    context.l10n.sum,
                    style: context.textTheme.bodyMedium?.copyWith(color: context.colorScheme.greyDark),
                  )
                ],
              ),
            ),
            const Divider(),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                context.l10n.paymentSum,
                style: context.textTheme.bodyMedium?.copyWith(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: _formKey,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: controller,
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return context.l10n.enterSumDialog;
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    hintText: context.l10n.enterSumDialog,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            const Divider(),
            const Gap(40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    context.l10n.chooseCard,
                    style: textTheme.bodyMedium?.copyWith(fontSize: 20),
                  ),
                ),
                const Gap(10),
                ListTile(
                  onTap: () {
                    showModalBottomSheet(context: context, builder: (context) => const CardsView()).then((value) async {
                      if (value == null || value.toString().isEmpty) return;
                      await ref.read(selectedCardProvider.notifier).setCard(value);
                    });
                  },
                  title: Text(
                    selectedType != null && cards.value != null
                        ? cards.value!.firstWhere((e) => e.id == selectedType).number
                        : context.l10n.cards,
                    style: textTheme.bodyMedium?.copyWith(fontSize: 18),
                  ),
                  leading: selectedType != null && cards.value != null
                      ? cards.value!.firstWhere((e) => e.id == selectedType).number.startsWith("8600")
                          ? Assets.images.uzCard.image(height: 60)
                          : Assets.images.humo.image(height: 60)
                      : null,
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  ),
                )
              ],
            )
          ],
        ),
        bottomNavigationBar: SafeArea(
            minimum: const EdgeInsets.all(20),
            child: PrimaryButton(
              isLoading: ref.watch(invoiceNotifier).isLoading,
              title: context.l10n.fillBalance,
              onPress: () {
                if (_formKey.currentState!.validate() && selectedType != null) {
                  ref
                      .read(invoiceNotifier.notifier)
                      .fillBalance(selectedType, int.parse(controller.text))
                      .then((value) {
                    if (value) {
                      ref.read(profileNotifierProvider.notifier).getProfile();
                      controller.clear();
                    }
                  });
                }
              },
            )),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
