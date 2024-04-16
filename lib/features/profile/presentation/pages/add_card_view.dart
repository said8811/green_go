import 'package:flutter/material.dart';
import 'package:green_go/features/profile/presentation/pages/add_card_page.dart';
import 'package:green_go/features/profile/presentation/pages/verify_card_page.dart';
import 'package:green_go/features/profile/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddCardView extends ConsumerWidget {
  const AddCardView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(addCardProvider);
    return state.data.cardId == null
        ? const AddCardPage()
        : const VerifyCardPage();
  }
}
