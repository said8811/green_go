import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class TimerNotifier extends StateNotifier<int> {
  TimerNotifier() : super(0) {
    getTime();
  }

  void getTime() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      state = state + 1;
    });
  }
}
