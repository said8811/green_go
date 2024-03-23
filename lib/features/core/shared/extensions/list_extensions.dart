import 'package:flutter/foundation.dart';

extension ListX on List {
  bool isIdentical(List other) {
    return listEquals(this, other);
  }
}
