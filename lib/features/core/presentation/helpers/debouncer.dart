import 'package:flutter/foundation.dart';
import 'dart:async';

class Debouncer {
  int? milliseconds;
  Timer? _timer;

  Debouncer({this.milliseconds = 400});

  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds ?? 500), action);
  }
}
