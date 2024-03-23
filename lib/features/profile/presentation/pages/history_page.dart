import 'package:flutter/material.dart';
import 'package:green_go/features/core/presentation/components/common_appbar.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HistoryPage extends ConsumerWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(
        title: context.l10n.travelHistory,
      ),
      body: const SafeArea(
          child: Column(
        children: [
          ExpansionTile(
            title: Text("Filter"),
            children: [],
          )
        ],
      )),
    );
  }
}
