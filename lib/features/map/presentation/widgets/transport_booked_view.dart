import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/presentation/helpers/modal_helper.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../gen/assets.gen.dart';
import '../../../core/presentation/widgets/common_svg_picture.dart';
import '../../shared/providers.dart';

class TransportBookWidget extends HookConsumerWidget {
  const TransportBookWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final textTheme = context.textTheme;
    final state = ref.watch(ridesNotifierProvider);
    final timer = ref.watch(booksTimerNotifierProvider);

    useEffect(() {
      ref
          .read(booksTimerNotifierProvider.notifier)
          .getTime(DateTime.parse(state.books[0].finishAt).toLocal());
      return null;
    });
    ref.listen(ridesNotifierProvider, (previous, next) {
      if (previous?.error == null && next.error != null) {
        showErrorDialog(context, failure: next.error).then(
            (value) => ref.read(transportStateProvider.notifier).cleanError());
      }
    });
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: state.books.isNotEmpty
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Text(
                      "Bron qilish vaqti:",
                      style: textTheme.bodyMedium,
                    ),
                    const Spacer(),
                    Text(getTime(timer), style: textTheme.bodyMedium),
                  ],
                ),
                const Gap(20),
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                      color: context.colorScheme.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Assets.images.bikey.image(width: 70),
                      ),
                      const Gap(14),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Sizning velosipedingiz"),
                          const Gap(12),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonSvgPicture(Assets.icons.qrCode),
                              const Gap(8),
                              Text(
                                state.books[0].qrCode,
                                style: context.textTheme.bodyMedium?.copyWith(
                                  fontSize: 14,
                                  color: context.colorScheme.primary,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  String getTime(int time) {
    return "${time ~/ 60 < 10 ? "0${time ~/ 60}" : time ~/ 60}:${time % 60 < 10 ? "0${time % 60}" : time % 60}";
  }
}
