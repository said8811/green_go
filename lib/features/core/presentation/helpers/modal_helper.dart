import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/domain/failure.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';

import '../../../map/presentation/widgets/transport_actions_view.dart';
import '../../../map/presentation/widgets/transport_booked_view.dart';
import '../buttons/primary_button.dart';
import '../widgets/common_svg_picture.dart';
import '/theme/colors.dart';
import '../buttons/default_button.dart';

Future<void> showAppToast(AppMessage? failure) async {
  Fluttertoast.showToast(
    msg: failure?.toString() ?? '',
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: AppColors.accent,
    textColor: AppColors.white,
    fontSize: 16.0,
  );
}

void openActionsView(BuildContext context) {
  showModalBottomSheet(
    context: context,
    enableDrag: false,
    backgroundColor: Colors.white,
    builder: (_) {
      return const TransportActionsView();
    },
  );
}

void openBooksView(BuildContext context) {
  showModalBottomSheet(
    context: context,
    enableDrag: false,
    backgroundColor: Colors.white,
    builder: (_) {
      return const TransportBookWidget();
    },
  );
}

Future<DateTime?> selectDate(
  BuildContext context, {
  DateTime? initialDate,
}) async {
  return showDatePicker(
    context: context,
    initialDate: initialDate ?? DateTime(2000),
    firstDate: DateTime(1900),
    lastDate: DateTime.now(),
  );
}

Future<dynamic> showAppDialog({
  required BuildContext context,
  required Function() onConfirm,
  String? title,
  required String confirmText,
  bool showCancel = true,
  String? subtitle,
  String? cancelText,
  bool loading = false,
  bool cancellable = true,
  bool barrierDismissible = true,
  bool shouldPop = true,
  String? iconPath,
  Widget? child,
  Function()? secondAction,
  String? secondActionText,
  bool isBoldTitle = true,
  ButtonType? primaryType,
  ButtonType? secondaryType,
  double? titleFontSize,
  EdgeInsets? padding,
  dynamic valueToReturn,
  bool useRootNavigator = false,
}) async {
  return showDialog(
    barrierDismissible: barrierDismissible,
    context: context,
    builder: (context) {
      return Dialog(
        surfaceTintColor: context.colorScheme.background,
        backgroundColor: context.colorScheme.background,
        insetPadding: padding ?? const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: PopScope(
          onPopInvoked: (_) async => barrierDismissible,
          child: Container(
            decoration: BoxDecoration(
              color: context.colorScheme.background,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(14),
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (iconPath != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: CommonSvgPicture(iconPath),
                  ),
                if (title?.isNotEmpty ?? false)
                  Text(
                    title!,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight:
                              isBoldTitle ? FontWeight.bold : FontWeight.w500,
                          fontSize: titleFontSize,
                        ),
                    textAlign: TextAlign.center,
                  ),
                if (title?.isNotEmpty ?? false) const Gap(16),
                if (subtitle != null)
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                if (subtitle != null) const Gap(20),
                if (child != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: child,
                  ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: PrimaryButton(
                        isLoading: loading,
                        title: confirmText,
                        onPress: () async {
                          onConfirm();
                          if (shouldPop) Navigator.pop(context, valueToReturn);
                        },
                      ),
                    ),
                    if ((cancellable && showCancel) || secondAction != null)
                      const Gap(32),
                    if (cancellable && showCancel)
                      Expanded(
                        child: SecondaryButton(
                          title: cancelText ?? 'Нет',
                          onPress: () => Navigator.pop(context),
                        ),
                      )
                    else if (!showCancel && secondAction != null)
                      Expanded(
                        child: PrimaryButton(
                          title: secondActionText ?? '',
                          onPress: () {
                            secondAction();
                            if (shouldPop) Navigator.pop(context);
                          },
                          borderColor: secondaryType == ButtonType.bordered
                              ? context.colorScheme.primary
                              : null,
                          textColor: secondaryType == ButtonType.bordered
                              ? context.colorScheme.textColor
                              : context.colorScheme.background,
                          color: context.colorScheme.inputFillColor,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

Future<void> showErrorDialog(
  BuildContext context, {
  required Failure? failure,
  Function()? onPress,
  bool cancellable = false,
}) async {
  showAppDialog(
    context: context,
    cancellable: cancellable,
    onConfirm: onPress ?? () {},
    title: '',
    subtitle: failure.toString(),
    confirmText: 'OK',
    padding: const EdgeInsets.symmetric(horizontal: 20),
  );
}

Future<void> showSuccessDialog(
  BuildContext context, {
  required String message,
  Function()? onPress,
}) async {
  showAppDialog(
    context: context,
    cancellable: false,
    onConfirm: onPress ?? () {},
    title: '',
    subtitle: message,
    confirmText: 'OK',
  );
}

Future<void> showScrollableModal({
  required BuildContext context,
  required Widget Function(BuildContext, ScrollController) builder,
  double? initialOffset,
  double? maxOffset,
  bool? isDismissable,
}) async {
  showModalBottomSheet(
    isScrollControlled: true,
    isDismissible: isDismissable ?? true,
    context: context,
    useRootNavigator: true,
    backgroundColor: Colors.transparent,
    barrierColor: Colors.black.withOpacity(0.8),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(10),
        right: Radius.circular(10),
      ),
    ),
    builder: (BuildContext context) => DraggableScrollableSheet(
      builder: builder,
      maxChildSize: maxOffset ?? .95,
      initialChildSize: initialOffset ?? 0.7,
    ),
  );
}

Future<TimeOfDay?> selectTime(
  BuildContext context, {
  TimeOfDay? initialTime,
}) async {
  return showTimePicker(
    context: context,
    initialTime: initialTime ?? const TimeOfDay(hour: 09, minute: 00),
  );
}
