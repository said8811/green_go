import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:green_go/features/core/presentation/buttons/primary_button.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/domain/failure.dart';
import '../../../core/presentation/helpers/modal_helper.dart';
import '../../shared/providers.dart';
import '../widgets/personal_details_form.dart';

class RegisterPage extends HookConsumerWidget {
  const RegisterPage({super.key});

  static const _pages = [
    PersonalDetailsForm(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(registerNotifierProvider);

    ref.listen(registerNotifierProvider, (previous, next) {
      if (next.failure != null) {
        showErrorDialog(context, failure: next.failure);
      }
      if (next.user != null) {}
    });

    final activeIndex = useState(0);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: IndexedStack(
        index: activeIndex.value,
        children: _pages,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: PrimaryButton(
          title: context.l10n.confirm,
          isLoading: state.isLoading,
          onPress: () {
            if (!state.agreeToTerms) {
              showErrorDialog(
                context,
                failure: const Failure.local('Вам необходимо принять условия'),
              );
              return;
            }
            if (!ref.read(registerNotifierProvider.notifier).isValid()) {
              showErrorDialog(
                context,
                failure: Failure.local(context.l10n.formError),
              );
              return;
            }

            ref.read(registerNotifierProvider.notifier).register(
                  phone: ref.watch(signInFormNotifierProvider).phone,
                  code: int.parse(ref.watch(signInFormNotifierProvider).code),
                );
          },
        ),
      ),
    );
  }
}
