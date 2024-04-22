import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class TimerNotifier extends StateNotifier<int> {
  TimerNotifier() : super(0);

  void getTime(DateTime time) {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      state = DateTime.now().difference(time).inSeconds;
    });
  }
}
