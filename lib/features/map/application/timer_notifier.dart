import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class TimerNotifier extends StateNotifier<int> {
  TimerNotifier() : super(0);
  Timer? _timer;
  void getTime(DateTime time) {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        state = DateTime.now().difference(time).inSeconds;
      } else {
        _timer?.cancel();
      }
    });
  }

  void cancel() {
    _timer?.cancel();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
