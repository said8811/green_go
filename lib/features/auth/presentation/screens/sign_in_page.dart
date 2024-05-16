import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:green_go/features/auth/presentation/screens/language_choose_page.dart';
import 'package:green_go/features/auth/presentation/screens/register_page.dart';
import 'package:green_go/features/core/presentation/components/common_appbar.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/core/shared/providers.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../application/sign_in_notifier.dart';
import '../../shared/providers.dart';

import 'get_code_page.dart';
import 'otp_page.dart';

class SignInPage extends HookConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeIndex = useState(0);

    List pages = [
      LanguageChoosePage(
        onTap: () => activeIndex.value = 1,
      ),
      const GetCodePage(),
      const OtpPage(),
      const RegisterPage()
    ];

    ref.listen<SignInFormState>(signInFormNotifierProvider, (previous, current) async {
      if (current.user != null) {
        ref.read(authNotifierProvider.notifier).signIn(current.user!);
        ref.read(dioProvider.notifier).setUp();
        return;
      }

      if (current.hasCodeSent && current.sentCodeIsTrue && !current.isRegistered) {
        activeIndex.value = 3;
      } else if (current.hasCodeSent) {
        activeIndex.value = 2;
      }
    });

    ref.listen(registerNotifierProvider, (previous, next) {
      if (next.user != null) {
        ref.read(authNotifierProvider.notifier).signIn(next.user!);
        ref.read(dioProvider.notifier).setUp();
        return;
      }
    });

    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        backgroundColor: context.colorScheme.surface,
        resizeToAvoidBottomInset: false,
        appBar: CommonAppBar(
          title: context.l10n.signIn,
          canPop: false,
        ),
        body: pages[activeIndex.value],
      ),
    );
  }
}
