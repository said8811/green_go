import 'package:flutter/material.dart';

extension StringX on String {
  String get inCaps => length > 0 ? '${this[0].toUpperCase()}${substring(1)}' : this;
  String get allInCaps => toUpperCase();
  String get capitalizeFirstofEach => replaceAll(RegExp(' +'), ' ').split(" ").map((str) => str.inCaps).join(" ");
  String get clearSymbols => replaceAll(RegExp('[^0-9]'), '');

  String get stripHtmlTags {
    final RegExp htmlRegex = RegExp('<[^>]+>');
    return replaceAll(htmlRegex, '');
  }

  bool get isValidPhone => replaceAll(RegExp('[^0-9]'), '').length == 9;

  String? get formatPhone {
    if (length == 12) {
      final countryCode = substring(0, 3);
      final firstPart = substring(3, 5);
      final secondPart = substring(5, 8);
      final thirdPart = substring(8, 10);
      final fourthPart = substring(10, 12);

      return '+$countryCode $firstPart $secondPart-$thirdPart-$fourthPart';
    } else {
      return null;
    }
  }

  bool get isImage {
    final imagePattern = RegExp(r'\.(jpeg|jpg|gif|png|webp)$', caseSensitive: false);
    return imagePattern.hasMatch(this);
  }

  bool get isVideo {
    final videoPattern = RegExp(r'\.(mp4|webm|mkv|avi|mov)$', caseSensitive: false);
    return videoPattern.hasMatch(this);
  }

  Color get colorFromHex {
    if (isEmpty) {
      return Colors.transparent;
    }

    var hexColor = toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return Color(int.parse(hexColor, radix: 16));
  }
}
