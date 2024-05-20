import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/domain/failure.dart';
import 'package:green_go/features/core/presentation/components/common_appbar.dart';
import 'package:green_go/features/core/presentation/components/error_with_retry.dart';
import 'package:green_go/features/core/presentation/components/loading_widget.dart';
import 'package:green_go/features/core/presentation/widgets/common_expandable_panel.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/profile/shared/providers.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class QAPage extends ConsumerWidget {
  const QAPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(qaNotifierProvider);
    return Scaffold(
        appBar: const CommonAppBar(
          title: "Q&A",
        ),
        body: state.when(
            data: (data) => ListView.separated(
                separatorBuilder: (_, __) => const Gap(12),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: data.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data[index].getTitle(context.l10n.localeName),
                        style: context.textTheme.bodyLarge,
                      ),
                      ...data[index].answers.map((e) => Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: context.colorScheme.grey.withOpacity(0.5),
                            ),
                            child: CommonExpandablePanel(
                              title: e.getTitle(context.l10n.localeName),
                              childPadded: false,
                              child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Text(e.getDesctiption(context.l10n.localeName))),
                            ),
                          ))
                    ],
                  );
                }),
            error: (e, s) =>
                ErrorWithRetry(failure: e as Failure, retry: () => ref.read(qaNotifierProvider.notifier).getAnswers()),
            loading: () => const LoadingWidget()));
  }
}
