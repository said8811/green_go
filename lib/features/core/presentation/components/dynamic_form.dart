import 'package:easy_mask/easy_mask.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';

import '/theme/colors.dart';
import '/gen/assets.gen.dart';

import '../../shared/extensions/date_time_extensions.dart';
import '../../shared/extensions/string_extensions.dart';
import '../../domain/failure.dart';
import '../../shared/extensions/theme_extensions.dart';

import '../buttons/back_button.dart';
import '../helpers/modal_helper.dart';
import '../helpers/ui_utils.dart';
import '../widgets/common_svg_picture.dart';
import '../widgets/custom_label.dart';
import '../widgets/selected_circle_widget.dart';

class DynamicForm {
  DynamicForm._();

  static OutlineInputBorder inputBorder(
          {bool hasBorder = true, BorderRadius? borderRadius}) =>
      OutlineInputBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(10),
        borderSide: hasBorder
            ? const BorderSide(color: AppColors.grey)
            : BorderSide.none,
      );

  static OutlineInputBorder focusBorder(
          {bool hasBorder = true, BorderRadius? borderRadius}) =>
      OutlineInputBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(10),
        borderSide: hasBorder
            ? const BorderSide(color: AppColors.grey)
            : BorderSide.none,
      );

  static OutlineInputBorder errorBorder(
          {bool hasBorder = true, BorderRadius? borderRadius}) =>
      OutlineInputBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(10),
        borderSide: hasBorder
            ? const BorderSide(color: AppColors.error)
            : BorderSide.none,
      );

  static Widget makePhoneNumberInputField(
    BuildContext context, {
    required Function(String val) onChanged,
    required String countryCode,
    Function(String val)? onSubmitted,
    String? hintText,
    TextInputAction? textInputAction,
    Iterable<String>? autofillHints,
    TextInputType? keyboardType,
    TextCapitalization? textCapitalization,
    String? label,
    TextEditingController? controller,
    bool autoFocus = false,
    BorderRadius? borderRadius,
    Color? fillColor,
    FocusNode? focusNode,
    bool obscureText = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) CustomLabel(label: label, isBold: true),
        TextFormField(
          obscureText: obscureText,
          focusNode: focusNode,
          controller: controller,
          onChanged: onChanged,
          autofocus: autoFocus,
          style: Theme.of(context).textTheme.bodyMedium,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            TextInputMask(mask: ['99 999-99-99', '99 999-99-99']),
          ],
          keyboardType: TextInputType.number,
          onFieldSubmitted: (phone) {
            if (onSubmitted == null) return;
            if (phone.isValidPhone) {
              onSubmitted(phone.clearSymbols);
            } else {
              showErrorDialog(
                context,
                failure: Failure.local(context.l10n.invalidPhone),
              );
            }
          },
          decoration: InputDecoration(
            border: inputBorder(borderRadius: borderRadius),
            focusedBorder: focusBorder(borderRadius: borderRadius),
            focusedErrorBorder: focusBorder(borderRadius: borderRadius),
            enabledBorder: inputBorder(borderRadius: borderRadius),
            disabledBorder: inputBorder(borderRadius: borderRadius),
            fillColor: fillColor,
            suffixIcon: FittedBox(
              fit: BoxFit.scaleDown,
              child: CommonSvgPicture(Assets.icons.call,
                  color: context.colorScheme.primary, size: 20),
            ),
            label: Text(
              '+$countryCode 000 00 00',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: context.colorScheme.secondaryText),
            ),
            prefix: Text('+$countryCode ',
                style: Theme.of(context).textTheme.bodyMedium),
          ),
        ),
      ],
    );
  }

  static Widget makeTextInputField(
    BuildContext context, {
    TextEditingController? controller,
    required Function(String val) onChanged,
    Function()? onEditingComplete,
    String? hintText,
    String? iconPath,
    Color iconColor = AppColors.primary,
    TextInputAction? textInputAction,
    Iterable<String>? autofillHints,
    TextInputType? keyboardType,
    TextCapitalization? textCapitalization,
    String? label,
    String? extraLabel,
    int? maxLength,
    int? maxLines,
    String? initialValue,
    Widget? leading,
    List<TextInputFormatter> formatters = const [],
    bool enabled = true,
    bool autoFocus = false,
    bool hasBackIcon = false,
    BorderRadius? borderRadius,
    Color? fillColor,
    Function(String)? onSubmitted,
    bool obscureText = false,
    FocusNode? focusNode,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: CustomLabel(label: label, isBold: true)),
              if (extraLabel != null)
                Text(
                  extraLabel,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: AppColors.text1),
                ),
            ],
          ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              if (leading != null) leading,
              Expanded(
                child: TextFormField(
                  obscureText: obscureText,
                  controller: controller,
                  focusNode: focusNode,
                  enabled: enabled,
                  initialValue: initialValue,
                  inputFormatters: formatters,
                  autocorrect: false,
                  autofocus: autoFocus,
                  maxLines: maxLines,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  autofillHints: autofillHints,
                  onChanged: onChanged,
                  onEditingComplete: onEditingComplete,
                  maxLength: maxLength,
                  style: context.textTheme.bodyMedium,
                  onFieldSubmitted: onSubmitted,
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    border: inputBorder(borderRadius: borderRadius),
                    focusedBorder: focusBorder(borderRadius: borderRadius),
                    focusedErrorBorder: focusBorder(borderRadius: borderRadius),
                    enabledBorder: inputBorder(borderRadius: borderRadius),
                    disabledBorder: inputBorder(borderRadius: borderRadius),
                    hintText: hintText,
                    labelText: label,
                    counterText: "",
                    hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: context.colorScheme.secondaryText,
                        ),
                    prefixIcon: hasBackIcon ? const CustomBackButton() : null,
                    filled: true,
                    fillColor: fillColor,
                    // suffix: Text('сум', style: context.textTheme.bodySmall),
                    suffixIcon: iconPath != null
                        ? SizedBox(
                            width: 40,
                            height: (maxLines ?? 0) > 1 ? 100 : 40,
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Align(
                                alignment: (maxLines ?? 0) > 1
                                    ? Alignment.bottomRight
                                    : Alignment.center,
                                child: CommonSvgPicture(iconPath,
                                    size: 20, color: iconColor),
                              ),
                            ),
                          )
                        : null,
                  ),
                  textInputAction: textInputAction ?? TextInputAction.done,
                  keyboardType: keyboardType,
                  textCapitalization:
                      textCapitalization ?? TextCapitalization.none,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  static Widget makeDateInputField(
    BuildContext context, {
    required Function(DateTime date) onPicked,
    required String hintText,
    required String iconPath,
    required DateTime? selectedDate,
    DateTime? firstDate,
    DateTime? lastDate,
    DateTime? initialDate,
    String? label,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) CustomLabel(label: label),
        InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () async {
            await selectDate(context, initialDate: initialDate)
                .then((pickedTime) {
              if (pickedTime != null) {
                onPicked(pickedTime);
              }
            });
          },
          child: Container(
            width: double.infinity,
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.grey),
            ),
            child: Row(
              children: [
                Text(
                  selectedDate != null
                      ? kDateFormatter.format(selectedDate)
                      : hintText,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: selectedDate != null
                          ? AppColors.black
                          : AppColors.text2),
                ),
                const Spacer(),
                Center(
                    child: CommonSvgPicture(iconPath, color: AppColors.text2)),
              ],
            ),
          ),
        ),
      ],
    );
  }

  static Widget makeTimeInputField(
    BuildContext context, {
    required Function(TimeOfDay time) onPicked,
    required String hintText,
    required String iconPath,
    TimeOfDay? initialTime,
    required TimeOfDay? selectedTime,
    bool enabled = true,
    String? label,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) CustomLabel(label: label),
        InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: !enabled
              ? null
              : () async {
                  await selectTime(context, initialTime: initialTime)
                      .then((pickedTime) {
                    if (pickedTime != null) {
                      onPicked(pickedTime);
                    }
                  });
                },
          child: Container(
            width: double.infinity,
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.grey),
            ),
            child: Row(
              children: [
                Text(
                  selectedTime != null ? selectedTime.to24HourFormat : hintText,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: selectedTime != null
                          ? AppColors.black
                          : AppColors.text2),
                ),
                const Spacer(),
                Center(
                  child: CommonSvgPicture(
                    iconPath,
                    color: AppColors.text2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  static Widget makeFilledField(
    BuildContext context, {
    required String text,
    String? iconPath,
    Color? borderColor,
    Color iconColor = AppColors.text2,
    String? label,
    GestureTapCallback? callback,
    Color? fillColor,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) CustomLabel(label: label, isBold: true),
        InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: callback,
          child: Ink(
            width: double.infinity,
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: fillColor,
              border: Border.all(
                  color: borderColor ?? context.colorScheme.dividerColor),
            ),
            child: Row(
              children: [
                Text(text, style: Theme.of(context).textTheme.bodyMedium),
                const Spacer(),
                if (iconPath != null)
                  Center(
                    child: CommonSvgPicture(
                      iconPath,
                      color: iconColor,
                      size: 20,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  static Widget makeDropDownField(
    BuildContext context, {
    String? selectedtext,
    String? label,
    required String hintText,
    required Function() onPress,
    bool isEnabled = true,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) CustomLabel(label: label, isBold: true),
        InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: isEnabled ? onPress : null,
          child: Container(
            width: double.infinity,
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.grey),
            ),
            child: Row(
              children: [
                Text(
                  selectedtext ?? hintText,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: selectedtext != null
                          ? AppColors.black
                          : AppColors.text2),
                ),
                const Spacer(),
                // const PlusIcon(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  static Widget makeAcceptTermsTile(
    BuildContext context, {
    required bool? value,
    required Function(bool val) onChanged,
    required Function() onNavigate,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Transform.translate(
        offset: const Offset(-8, 0),
        child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () => onChanged(!(value ?? false)),
          icon: SelectedCircleWidget(isSelected: value ?? false),
        ),
      ),
      horizontalTitleGap: 0.0,
      title: RichText(
        text: TextSpan(
          text: context.l10n.agreeAndAccept,
          style: Theme.of(context).textTheme.bodyMedium,
          children: [
            TextSpan(
              text: context.l10n.ofPublicOffer,
              recognizer: TapGestureRecognizer()..onTap = onNavigate,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }

  // static Widget makeSelectGenderField(
  //   BuildContext context, {
  //   required Function(Gender gender) onSelect,
  //   required Gender? selectedGender,
  //   bool showLabel = true,
  // }) {
  //   return Column(
  //     children: [
  //       if (showLabel) CustomLabel(label: context.l10n.selectGender),
  //       Row(
  //         children: [
  //           Expanded(
  //             child: InkWell(
  //               onTap: () => onSelect(Gender.male),
  //               borderRadius: const BorderRadius.all(Radius.circular(4)),
  //               child: Padding(
  //                 padding: const EdgeInsets.symmetric(vertical: 10),
  //                 child: Row(
  //                   children: [
  //                     SelectedCircleWidget(isSelected: selectedGender == Gender.male),
  //                     const Gap(10),
  //                     Text(context.l10n.man),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ),
  //           const Gap(20),
  //           Expanded(
  //             child: InkWell(
  //               onTap: () => onSelect(Gender.female),
  //               borderRadius: const BorderRadius.all(Radius.circular(4)),
  //               child: Padding(
  //                 padding: const EdgeInsets.symmetric(vertical: 10),
  //                 child: Row(
  //                   children: [
  //                     SelectedCircleWidget(isSelected: selectedGender == Gender.female),
  //                     const Gap(10),
  //                     Text(context.l10n.woman),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ],
  //   );
  // }
}
