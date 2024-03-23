import 'package:flutter/material.dart';

extension DividerX on Divider {
  Divider indented({double height = 0, double indent = 20}) =>
      Divider(indent: indent, endIndent: indent, height: height);
  Divider get zeroHeight => const Divider(height: 0);
}
