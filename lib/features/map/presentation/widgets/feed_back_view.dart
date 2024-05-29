import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/presentation/buttons/primary_button.dart';
import '../../../core/presentation/components/dynamic_form.dart';
import '../../../core/presentation/widgets/common_title_info.dart';
import '../../shared/providers.dart';

class FeedBackView extends HookConsumerWidget {
  const FeedBackView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    final rate = useState(0);
    final state = ref.watch(ridesNotifierProvider);
    return Padding(
      padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          CommonTitleInfo(
            padded: false,
            title: context.l10n.tariff,
            subTitle: state.finish!.tariff.tariffInfo.getTitle(context.l10n.localeName),
          ),
          const Gap(20),
          ListView.separated(
              padding: EdgeInsets.zero,
              separatorBuilder: (context, index) => const Divider(),
              shrinkWrap: true,
              itemCount: state.finish!.tariff.tariffFields.length,
              itemBuilder: (context, index) {
                final field = state.finish!.tariff.tariffFields[index];
                return Row(
                  children: [
                    Text(
                      field.getName(context.l10n.localeName),
                      style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    Text(
                      field.price.toString(),
                      style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400, fontSize: 18),
                    ),
                    const Gap(5),
                    Text(
                      field.getUnit(context.l10n.localeName),
                      style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400, fontSize: 18),
                    ),
                  ],
                );
              }),
          const Gap(30),
          Center(
            child: SizedBox(
              height: 40,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) => IconButton(
                    onPressed: () {
                      rate.value = index + 1;
                    },
                    icon: Icon(rate.value <= index ? EvaIcons.starOutline : EvaIcons.star)),
                separatorBuilder: (context, index) => const Gap(10),
              ),
            ),
          ),
          const Gap(20),
          DynamicForm.makeTextInputField(context,
              onChanged: (text) {}, textInputAction: TextInputAction.done, minLines: 3, controller: controller),
          const Gap(15),
          PrimaryButton(
            title: "Jo'natish",
            onPress: () {
              ref
                  .read(ridesNotifierProvider.notifier)
                  .feedBack(message: controller.text.trim(), rate: rate.value)
                  .then((value) => Navigator.pop(context));
            },
          ),
          const Gap(30)
        ],
      ),
    );
  }
}
