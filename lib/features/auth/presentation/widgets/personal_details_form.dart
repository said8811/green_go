import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/infrastructure/url_launch_service.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../theme/colors.dart';
import '../../../core/presentation/widgets/custom_label.dart';
import '../../shared/providers.dart';
import '/gen/assets.gen.dart';

class PersonalDetailsForm extends HookConsumerWidget {
  const PersonalDetailsForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController();
    final l10n = context.l10n;
    final signInState = ref.watch(signInFormNotifierProvider);
    final state = ref.watch(registerNotifierProvider);

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                autocorrect: false,
                controller: nameController,
                autofillHints: const [AutofillHints.name],
                enableSuggestions: false,
                onChanged: (value) => ref.read(registerNotifierProvider.notifier).changePersonalDetails(name: value),
                onEditingComplete: () => FocusScope.of(context).unfocus(),
                decoration: InputDecoration(
                  labelText: l10n.name,
                  labelStyle: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400),
                  suffixIcon: SizedBox(
                    width: 50,
                    height: 50,
                    child: Center(
                      child: SvgPicture.asset(
                        Assets.icons.user,
                        colorFilter: ColorFilter.mode(context.colorScheme.grey, BlendMode.srcIn),
                      ),
                    ),
                  ),
                ),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
              ),
              const Gap(10),
              CustomLabel(label: l10n.phoneNumber),
              Container(
                width: double.infinity,
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                  border: Border.all(color: AppColors.grey),
                ),
                child: Row(
                  children: [
                    Text(
                      signInState.phone,
                      style: context.textTheme.bodyMedium,
                    ),
                    const Spacer(),
                    Center(
                      child: SvgPicture.asset(
                        Assets.icons.call,
                        colorFilter: ColorFilter.mode(context.colorScheme.grey, BlendMode.srcIn),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(20),
              const Gap(10),
              Row(
                children: [
                  Transform.translate(
                    offset: const Offset(-8, 0),
                    child: Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onChanged: (value) {
                        if (value == null) return;
                        ref.read(registerNotifierProvider.notifier).changeAgreeToTerms(isAgree: value);
                      },
                      value: state.agreeToTerms,
                      activeColor: context.colorScheme.primary,
                      checkColor: context.colorScheme.surface,
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => UrlLaunchService.launchUrl("https://oferta.green-go.uz/"),
                      child: RichText(
                        text: TextSpan(
                          text: context.l10n.agreeAndAccept,
                          style: context.textTheme.bodySmall,
                          children: [
                            TextSpan(
                              text: " ${context.l10n.publicOffer}",
                              style: context.textTheme.bodySmall!.copyWith(
                                decoration: TextDecoration.underline,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
