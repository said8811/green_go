import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/domain/failure.dart';
import 'package:green_go/features/core/presentation/buttons/primary_button.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../core/presentation/buttons/default_button.dart';
import '../../../core/presentation/helpers/modal_helper.dart';
import '../../../core/presentation/widgets/countdown_timer.dart';
import '../../application/sign_in_notifier.dart';
import '../../shared/providers.dart';

class OtpPage extends HookConsumerWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final l10n = context.l10n;
    final state = ref.watch(signInFormNotifierProvider);
    final controller = useTextEditingController();

    final timerDuration = useState(
      DateTime.now().difference(DateTime.now()) + const Duration(seconds: 60),
    );

    ref.listen<SignInFormState>(signInFormNotifierProvider, (previous, current) async {
      if (previous?.error == null && current.error != null) {
        showErrorDialog(context, failure: current.error);
        controller.clear();
      }
      if (previous?.user == null && current.user != null) {}
    });

    final isValid = useState(controller.text.isNotEmpty && controller.text.length == 6);
    final canRequestNewCode = useState(false);

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Kodni kiriting",
                style: context.textTheme.bodyLarge!.copyWith(fontSize: 32),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                l10n.codeSentNumber(state.phone),
                textAlign: TextAlign.start,
                style: context.textTheme.labelSmall!.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: PinCodeTextField(
                appContext: context,
                autoDisposeControllers: false,
                length: 6,
                controller: controller,
                cursorColor: context.colorScheme.primary,
                keyboardType: TextInputType.number,
                useHapticFeedback: true,
                backgroundColor: Colors.transparent,
                animationType: AnimationType.scale,
                enableActiveFill: true,
                autoFocus: true,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                textStyle: context.textTheme.headlineMedium!.copyWith(color: context.colorScheme.surface),
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.circle,
                  selectedColor: context.colorScheme.primary,
                  fieldHeight: 50,
                  fieldWidth: (width - 120) / 6,
                  activeFillColor: context.colorScheme.primary,
                  inactiveColor: context.colorScheme.grey,
                  inactiveFillColor: context.colorScheme.surface,
                  activeColor: context.colorScheme.primary,
                  selectedFillColor: context.colorScheme.surface,
                ),
                animationDuration: const Duration(milliseconds: 100),
                onCompleted: (value) {
                  continueAuth(
                    registered: state.isRegistered,
                    ref: ref,
                    phone: state.phone,
                    code: value,
                  );
                },
                onChanged: (_) {},
                beforeTextPaste: (text) {
                  return true;
                },
              ),
            ),
            const SizedBox(height: 100),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: PrimaryButton(
                isLoading: state.isLoading,
                title: l10n.next,
                onPress: () {
                  if (isValid.value) {
                    continueAuth(
                      registered: state.isRegistered,
                      ref: ref,
                      phone: state.phone,
                      code: controller.text,
                    );
                  } else {
                    showErrorDialog(
                      context,
                      failure: Failure.server(l10n.formError),
                    );
                  }
                },
              ),
            ),
            const Gap(40),
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CountDownTimer(
                    timeRemaining: timerDuration.value,
                    whenTimeExpires: () => canRequestNewCode.value = true,
                  ),
                  AppTextButton(
                    enabled: canRequestNewCode.value,
                    title: l10n.sendNewCode,
                    textColor: context.colorScheme.primary.withOpacity(canRequestNewCode.value ? 1 : 0.6),
                    onPress: () {
                      ref
                          .read(signInFormNotifierProvider.notifier)
                          .getCode(state.phone, isRequestForRestor: true)
                          .then((_) {
                        controller.clear();
                        canRequestNewCode.value = false;
                        timerDuration.value = DateTime.now().difference(DateTime.now()) + const Duration(seconds: 60);
                      });
                    },
                    isLarge: true,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void continueAuth({
    required bool registered,
    required WidgetRef ref,
    required String phone,
    required String code,
  }) {
    if (registered) {
      ref.read(signInFormNotifierProvider.notifier).signIn(phone: phone, code: code);
    } else {
      ref.read(signInFormNotifierProvider.notifier).checkCode(phone: phone, code: int.parse(code));
    }
  }
}
