import 'package:flutter/material.dart';
import 'package:green_go/features/core/presentation/components/common_appbar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class QAPage extends ConsumerWidget {
  const QAPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: CommonAppBar(
        title: "Q&A",
      ),
    );
  }
}
