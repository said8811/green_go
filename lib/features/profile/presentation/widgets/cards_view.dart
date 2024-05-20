import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../services/router/constants.dart';
import '../../../core/domain/failure.dart';
import '../../../core/presentation/components/error_with_retry.dart';
import '../../../core/presentation/components/loading_widget.dart';
import '../../shared/providers.dart';

class CardsView extends ConsumerStatefulWidget {
  const CardsView({super.key});

  @override
  ConsumerState<CardsView> createState() => _CardsViewState();
}

class _CardsViewState extends ConsumerState<CardsView> {
  @override
  void initState() {
    Future.microtask(() => ref.read(cardsNotifierProvider.notifier).getCards());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cards = ref.watch(cardsNotifierProvider);
    final selectedType = ref.watch(selectedCardProvider);

    return Container(
      height: 300,
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: cards.when(
        data: (data) => ListView.separated(
          itemBuilder: (context, index) => index == data.length
              ? ListTile(
                  leading: const Icon(Icons.add),
                  onTap: () {
                    context.push(AppRoute.addCardView.routePathWithSlash).then((value) => Navigator.pop(context));
                  },
                  title: Text(
                    context.l10n.addCard,
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
                    if (direction == DismissDirection.endToStart) {
                      ref
                          .read(cardsNotifierProvider.notifier)
                          .removeCard(data[index].id)
                          .then((value) => ref.read(selectedCardProvider.notifier).clear());
                    }
                  },
                  direction: DismissDirection.endToStart,
                  child: ListTile(
                    onTap: () {
                      Navigator.pop(context, data[index].id);
                    },
                    title: Text(data[index].number),
                    trailing: selectedType == data[index].id
                        ? const Icon(
                            Icons.check,
                            color: Colors.black,
                          )
                        : null,
                    leading: data[index].number.startsWith("8600")
                        ? Assets.images.uzCard.image()
                        : data[index].number.startsWith("9600")
                            ? Assets.images.humo.image()
                            : null,
                    subtitle: Text(
                      data[index].expire,
                      style: context.textTheme.bodyMedium?.copyWith(color: context.colorScheme.greyDark),
                    ),
                  ),
                ),
          separatorBuilder: (_, __) => const Gap(20),
          itemCount: data.length + 1,
        ),
        error: (error, s) =>
            ErrorWithRetry(failure: error as Failure, retry: () => ref.read(cardsNotifierProvider.notifier).getCards()),
        loading: () => const LoadingWidget(),
      ),
    );
  }
}
