import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../theme/colors.dart';
import '../../../../theme/texstyles.dart';
import '../../../core/presentation/buttons/default_button.dart';
import '../../../core/presentation/helpers/modal_helper.dart';
import '../../shared/providers.dart';

class AuthDialogs {
  AuthDialogs._();

  static Future<void> showExitDialog({
    required BuildContext context,
    required WidgetRef ref,
  }) async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: const EdgeInsets.all(20),
        content: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Вы хотите выйти?',
                style: AppTextStyles.bodyLarge,
              ),
              const Gap(20),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        Navigator.pop(context);
                        ref.read(authNotifierProvider.notifier).signOut();
                      },
                      child: Column(
                        children: [
                          const Icon(Icons.done, color: AppColors.primary),
                          const Gap(4),
                          Text(
                            'Выйти',
                            style: AppTextStyles.bodyMedium
                                .copyWith(color: AppColors.primary),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(20),
                  Expanded(
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () => Navigator.pop(context),
                      child: Column(
                        children: [
                          const Icon(Icons.close, color: AppColors.error),
                          const Gap(4),
                          Text(
                            'Отмена',
                            style: AppTextStyles.bodyMedium
                                .copyWith(color: AppColors.error),
                          ),
                        ],
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

  static Future<void> showDeleteDialog({
    required BuildContext context,
    required WidgetRef ref,
  }) async {
    showAppDialog(
      context: context,
      onConfirm: () {},
      title: 'Вы действительно хотите удалить свой аккаунт?',
      confirmText: 'Отмена',
      secondActionText: 'Подтвердить',
      secondAction: () {
        ref.read(authNotifierProvider.notifier).deleteAccount();
      },
      showCancel: false,
      secondaryType: ButtonType.bordered,
    );

    // showDialog(
    //   context: context,
    //   builder: (context) => AlertDialog(
    //     contentPadding: const EdgeInsets.all(20),
    //     content: SizedBox(
    //       width: MediaQuery.of(context).size.width,
    //       child: Column(
    //         mainAxisSize: MainAxisSize.min,
    //         children: [
    //           const Text(
    //             'Вы действительно хотите удалить свой аккаунт?',
    //             style: AppTextStyles.bodyLarge,
    //             textAlign: TextAlign.center,
    //           ),
    //           const Gap(20),
    //           Row(
    //             children: [
    //               const Gap(20),
    //               Expanded(
    //                 child: TextButton(
    //                   onPressed: () {
    //                     Navigator.pop(context);
    //                   },
    //                   child: Align(
    //                     child: Text(
    //                       'Отмена',
    //                       textAlign: TextAlign.end,
    //                       style: AppTextStyles.bodyMedium.copyWith(fontWeight: FontWeight.w600),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //               const Gap(20),
    //               Expanded(
    //                 child: TextButton(
    //                   onPressed: () async {
    //                     ref.read(authNotifierProvider.notifier).deleteAccount();
    //                     Navigator.pop(context);
    //                   },
    //                   child: Align(
    //                     child: Text(
    //                       'Подтвердить',
    //                       textAlign: TextAlign.start,
    //                       style: AppTextStyles.bodyMedium.copyWith(fontWeight: FontWeight.w600, color: AppColors.error),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //               const Gap(20),
    //             ],
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
