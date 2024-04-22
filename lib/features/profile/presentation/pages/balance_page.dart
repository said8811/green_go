import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/core/domain/failure.dart';
import 'package:green_go/features/core/presentation/buttons/primary_button.dart';
import 'package:green_go/features/core/presentation/components/common_appbar.dart';
import 'package:green_go/features/core/presentation/components/error_with_retry.dart';
import 'package:green_go/features/core/presentation/components/loading_widget.dart';
import 'package:green_go/features/core/presentation/helpers/modal_helper.dart';
import 'package:green_go/features/core/presentation/helpers/ui_utils.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/profile/domain/card_model.dart';
import 'package:green_go/gen/assets.gen.dart';

import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:green_go/services/router/constants.dart';
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
                    kPriceFormatter.format(state.maybeWhen(
                        orElse: () => 0.0, data: (data) => data.balance)),
                    style: context.textTheme.bodyMedium?.copyWith(fontSize: 24),
                  ),
                  const Gap(10),
                  Text(
                    "so'm",
                    style: context.textTheme.bodyMedium
                        ?.copyWith(color: context.colorScheme.greyDark),
                  )
                ],
              ),
            ),
            const Divider(),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "To‘lov miqdori",
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
                      return "Miqdorni kiriting";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    hintText: "Miqdorni kiriting",
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
                    "Karta tanlang",
                    style: textTheme.bodyMedium?.copyWith(fontSize: 20),
                  ),
                ),
                const Gap(10),
                ListTile(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => Container(
                              height: 300,
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: cards.when(
                                data: (data) => ListView.separated(
                                  itemBuilder: (context, index) => index ==
                                          data.length
                                      ? ListTile(
                                          leading: const Icon(Icons.add),
                                          onTap: () {
                                            context
                                                .push(AppRoute.addCardView
                                                    .routePathWithSlash)
                                                .then((value) =>
                                                    Navigator.pop(context));
                                          },
                                          title: Text(
                                            "Karta qo'shish",
                                            style: context.textTheme.bodyMedium,
                                          ),
                                        )
                                      : Dismissible(
                                          background: Container(
                                            color: Colors.red,
                                            child: const Icon(
                                              Icons.delete,
                                              color: Colors.white,
                                            ),
                                          ),
                                          key: ValueKey(index),
                                          onDismissed: (direction) {
                                            if (direction ==
                                                DismissDirection.endToStart) {
                                              ref
                                                  .read(cardsNotifierProvider
                                                      .notifier)
                                                  .removeCard(data[index].id);
                                            }
                                          },
                                          direction:
                                              DismissDirection.endToStart,
                                          child: ListTile(
                                            onTap: () {
                                              Navigator.pop(
                                                  context, data[index]);
                                            },
                                            title: Text(data[index].number),
                                            trailing: selectedType?.number ==
                                                    data[index].number
                                                ? const Icon(
                                                    Icons.check,
                                                    color: Colors.black,
                                                  )
                                                : null,
                                            leading: data[index]
                                                    .number
                                                    .startsWith("8600")
                                                ? Assets.images.uzCard.image()
                                                : data[index]
                                                        .number
                                                        .startsWith("9600")
                                                    ? Assets.images.humo.image()
                                                    : null,
                                            subtitle: Text(
                                              data[index].expire,
                                              style: context
                                                  .textTheme.bodyMedium
                                                  ?.copyWith(
                                                      color: context.colorScheme
                                                          .greyDark),
                                            ),
                                          ),
                                        ),
                                  separatorBuilder: (_, __) => const Gap(20),
                                  itemCount: data.length + 1,
                                ),
                                error: (error, s) => ErrorWithRetry(
                                    failure: error as Failure,
                                    retry: () => ref
                                        .read(cardsNotifierProvider.notifier)
                                        .getCards()),
                                loading: () => const LoadingWidget(),
                              ),
                            )).then((value) {
                      if (value == null || value.toString().isEmpty) return;
                      setState(() {
                        selectedType = value;
                      });
                    });
                  },
                  title: Text(
                    selectedType != null ? selectedType!.number : "Kartalar",
                    style: textTheme.bodyMedium?.copyWith(fontSize: 18),
                  ),
                  leading: selectedType != null
                      ? selectedType!.number.startsWith("8600")
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
              title: "Balansi to'ldirish",
              onPress: () {
                if (_formKey.currentState!.validate() &&
                    selectedType?.id != null) {
                  ref
                      .read(invoiceNotifier.notifier)
                      .fillBalance(selectedType!.id, int.parse(controller.text))
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
