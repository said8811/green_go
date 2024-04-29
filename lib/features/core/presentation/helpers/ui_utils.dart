import 'package:green_go/features/core/shared/extensions/date_time_extensions.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:intl/intl.dart';

import '../../shared/constants.dart';

final kPriceFormatter = NumberFormat.decimalPattern('uz');
final kDateFormatter = DateFormat("dd.MM.yyyy");
final kDateFormatterShort = DateFormat(DateFormat.ABBR_MONTH_DAY, 'ru');
final kDateFormatterLong = DateFormat(DateFormat.YEAR_ABBR_MONTH_DAY, 'ru');
final kDateFormatterForApi = DateFormat("yyyy-MM-dd");
final kDateFormatterForApiLong = DateFormat("yyyy-MM-dd HH:mm");
final kDateAndTimeFormatter = DateFormat("dd.MMMM.yyyy HH:mm");
final kDateAndTimeFormatterLong = DateFormat("dd MMMM HH:mm", 'ru_RU');
final kTimeFormatter = DateFormat("HH:mm");

String getFormattedRange(DateTimeRange range) {
  return '${DateFormat(DateFormat.ABBR_MONTH_DAY).format(range.start)} - ${DateFormat(DateFormat.ABBR_MONTH_DAY).format(range.end)}';
}

String getTime(int time) {
  return "${time ~/ 60 < 10 ? "0${time ~/ 60}" : time ~/ 60}:${time % 60 < 10 ? "0${time % 60}" : time % 60}";
}

bool isValidEmail(String email) => RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(email);

class DecimalFormatter extends TextInputFormatter {
  final int decimalDigits;

  DecimalFormatter({this.decimalDigits = 3}) : assert(decimalDigits >= 0);

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String newText;

    if (decimalDigits == 0) {
      newText = newValue.text.replaceAll(RegExp('[^0-9]'), '');
    } else {
      newText = newValue.text.replaceAll(RegExp('[^0-9.]'), '');
    }

    if (newText.contains('.')) {
      //in case if user's first input is "."
      if (newText.trim() == '.') {
        return newValue.copyWith(
          text: '0.',
          selection: const TextSelection.collapsed(offset: 2),
        );
      }
      //in case if user tries to input multiple "."s or tries to input
      //more than the decimal place
      else if ((newText.split(".").length > 2) ||
          (newText.split(".")[1].length > decimalDigits)) {
        return oldValue;
      } else {
        return newValue;
      }
    }

    //in case if input is empty or zero
    if (newText.trim() == '' || newText.trim() == '0') {
      return newValue.copyWith(text: '');
    } else if (int.parse(newText) < 1) {
      return newValue.copyWith(text: '');
    }

    final double newDouble = double.parse(newText);
    final selectionIndexFromTheRight =
        newValue.text.length - newValue.selection.end;

    final String newString = NumberFormat("#,##0.##").format(newDouble);

    return TextEditingValue(
      text: newString,
      selection: TextSelection.collapsed(
        offset: newString.length - selectionIndexFromTheRight,
      ),
    );
  }
}

class UiUtils {
  UiUtils._();

  static String getImageUrl(String folder, String name) =>
      '$kCDNUrl/$folder/$name';
  static String getWorkTime(TimeOfDay start, TimeOfDay end) =>
      '${start.to24HourFormat} - ${end.to24HourFormat}';
  static String formatPrice(
    BuildContext context,
    num price, [
    String? currency,
  ]) {
    if (currency == null) {
      return context.l10n.productPrice(kPriceFormatter.format(price));
    } else {
      return '${kPriceFormatter.format(price)} $currency';
    }
  }

  static String formatPoints(BuildContext context, num points) =>
      context.l10n.points(kPriceFormatter.format(points));
}
