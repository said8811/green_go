import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/core/presentation/buttons/primary_button.dart';
import 'package:green_go/features/core/presentation/components/common_appbar.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/profile/presentation/widgets/history_widget.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../shared/providers.dart';
import '../widgets/calendar_range_widget.dart';

class HistoryPage extends HookConsumerWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rides = ref.watch(ridesHistoryNotifierProvider);
    final from = useState<DateTime?>(null);
    final to = useState<DateTime?>(null);
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                          content: CalendarRangeWidget(
                            start: DateTime.now(),
                            end: DateTime.now().subtract(const Duration(days: 7)),
                            onChanged: (args) {
                              if (args.value is PickerDateRange) {
                                from.value = (args.value as PickerDateRange).startDate ?? from.value;
                                to.value = (args.value as PickerDateRange).endDate ?? to.value;
                              }
                            },
                          ),
                          actions: [
                            PrimaryButton(
                              title: context.l10n.cancel,
                              onPress: () {
                                from.value = null;
                                to.value = null;
                                context.pop();
                              },
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              borderColor: context.colorScheme.primary,
                              color: Colors.white,
                              textColor: context.colorScheme.primary,
                            ),
                            PrimaryButton(
                              title: context.l10n.ok,
                              onPress: () {
                                ref.read(ridesHistoryNotifierProvider.notifier).getHistory(from.value, to.value);
                                context.pop();
                              },
                            ),
                          ],
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(from.value != null && to.value != null
                          ? "${filtrDate(from.value!)} - ${filtrDate(to.value!)}"
                          : context.l10n.filter),
                      trailing: const Icon(Icons.calendar_month),
                    ),
                  ),
                  const Gap(20),
                  Expanded(
                    child: RefreshIndicator(
                      onRefresh: () async {
                        ref.read(ridesHistoryNotifierProvider.notifier).getHistory(from.value, to.value);
                      },
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return HistoryWidget(ride: rides.rides[index]);
                          },
                          separatorBuilder: (_, __) => const Gap(20),
                          itemCount: rides.rides.length),
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  String filtrDate(DateTime date) {
    return "${date.day < 10 ? "0${date.day}" : date.day}/${date.month < 10 ? "0${date.month}" : date.month}";
  }
}
