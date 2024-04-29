import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../gen/assets.gen.dart';
import '../../../core/presentation/helpers/modal_helper.dart';
import '../../../core/presentation/helpers/ui_utils.dart';
import '../../../core/presentation/widgets/common_svg_picture.dart';
import '../../shared/providers.dart';

class BookTimerWidget extends ConsumerWidget {
  const BookTimerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookTimer = ref.watch(booksTimerNotifierProvider);

    return Positioned(
        left: 100,
        top: 60,
        child: InkWell(
          onTap: () {
            openBooksView(context);
          },
          child: Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 1,
                    offset: const Offset(4, 4),
                    color: context.colorScheme.grey)
              ],
            ),
            child: Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 11, horizontal: 8),
                  decoration: BoxDecoration(
                      color: context.colorScheme.primary,
                      borderRadius: BorderRadius.circular(20)),
                  child: CommonSvgPicture(Assets.icons.selectedBike),
                ),
                const Gap(10),
                Text(getTime(bookTimer))
              ],
            ),
          ),
        ));
  }
}
