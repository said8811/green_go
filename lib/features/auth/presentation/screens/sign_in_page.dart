import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:green_go/features/auth/presentation/screens/register_page.dart';
import 'package:green_go/features/core/presentation/components/common_appbar.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/core/shared/providers.dart';
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

    const pages = [GetCodePage(), OtpPage(), RegisterPage()];

    ref.listen<SignInFormState>(signInFormNotifierProvider, (previous, current) async {
      if (current.user != null) {
        ref.read(authNotifierProvider.notifier).signIn(current.user!);
        ref.read(dioProvider.notifier).setUp();
        return;
      }

      if (current.hasCodeSent && current.sentCodeIsTrue && !current.isRegistered) {
        activeIndex.value = 2;
      } else if (current.hasCodeSent) {
        activeIndex.value = 1;
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
        appBar: const CommonAppBar(
          title: "Tizimga kirish",
          canPop: false,
        ),
        body: pages[activeIndex.value],
      ),
    );
  }
}
