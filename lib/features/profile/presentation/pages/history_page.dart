import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/presentation/components/common_appbar.dart';
import 'package:green_go/features/profile/presentation/widgets/history_widget.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/providers.dart';

class HistoryPage extends ConsumerWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rides = ref.watch(ridesHistoryNotifierProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(
        title: context.l10n.travelHistory,
      ),
      body: SafeArea(
        child: rides.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  const ExpansionTile(
                    title: Text("Filter"),
                    children: [],
                  ),
                  const Gap(20),
                  Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return HistoryWidget(ride: rides.rides[index]);
                        },
                        separatorBuilder: (_, __) => const Gap(20),
                        itemCount: rides.rides.length),
                  ),
                ],
              ),
      ),
    );
  }
}
