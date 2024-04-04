import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/presentation/buttons/primary_button.dart';
import 'package:green_go/features/core/shared/extensions/string_extensions.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/domain/failure.dart';
import '../../../core/presentation/helpers/modal_helper.dart';
import '../../application/sign_in_notifier.dart';
import '../../shared/providers.dart';

class GetCodePage extends HookConsumerWidget {
  const GetCodePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final phoneController = useTextEditingController();
    final countries = PhoneCodes.findCountryDatasByCountryCodes(
      countryIsoCodes: ['UZ'],
    );

    final selected = useState(countries.first);
    final textTheme = context.textTheme;
    ref.listen<SignInFormState>(signInFormNotifierProvider,
        (previous, current) async {
      if (previous?.error == null && current.error != null) {
        showErrorDialog(context, failure: current.error);
        phoneController.clear();
      }
      if (previous?.user == null && current.user != null) {}
    });

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Gap(30),
            Text(
              "Telefon raqamini kiriting",
              style: textTheme.bodyLarge!.copyWith(fontSize: 32),
            ),
            const Gap(15),
            Text(
              "Kiritilgan telefon raqamiga tasdiqlash kodini yuboramiz",
              style: textTheme.bodyMedium!
                  .copyWith(color: context.colorScheme.greyDark),
            ),
            const Gap(20),
            TextFormField(
              controller: phoneController,
              autofocus: true,
              style: context.textTheme.bodyMedium,
              inputFormatters: [
                PhoneInputFormatter(
                  defaultCountryCode: selected.value.countryCode,
                  onCountrySelected: (value) {
                    phoneController.clear();
                  },
                ),
              ],
              keyboardType: TextInputType.number,
              onFieldSubmitted: (phone) =>
                  getCode(context, phoneController.text, selected.value, ref),
              decoration: InputDecoration(
                // label: Row(
                //   children: [
                //     Text('+${selected.value.phoneCode} ',
                //         style: textTheme.headlineMedium),

                //   ],
                // ),
                prefix: Text(
                  "+998 ",
                  style: textTheme.headlineMedium,
                ),
                fillColor: Colors.transparent,
                hintText: '${selected.value.phoneMaskWithoutCountryCode} ',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: context.colorScheme.textColor)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: context.colorScheme.grey)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: context.colorScheme.textColor)),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: PrimaryButton(
                isLoading: ref.watch(signInFormNotifierProvider).isLoading,
                title: 'Kodni olish',
                onPress: () =>
                    getCode(context, phoneController.text, selected.value, ref),
              ),
            ),
            const Gap(20)
          ],
        ),
      ),
    );
  }

  Future<void> getCode(BuildContext context, String text, PhoneCountryData data,
      WidgetRef ref) async {
    if (text.clearSymbols.length ==
        data.phoneMaskWithoutCountryCode.clearSymbols.length) {
      final phone = '${data.phoneCode}${text.clearSymbols}';
      ref.read(signInFormNotifierProvider.notifier).getCode(
            phone,
            isRequestForRestor: false,
          );
    } else {
      showErrorDialog(
        context,
        failure: const Failure.local('Неверный формат номера телефона'),
      );
    }
  }
}
