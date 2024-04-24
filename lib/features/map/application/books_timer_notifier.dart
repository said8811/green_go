import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class BooksTimerNotifier extends StateNotifier<int> {
  BooksTimerNotifier() : super(0);

  Timer? _timer;

  void getTime(DateTime time) {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      state = time.difference(DateTime.now()).inSeconds;
      if (state < 0) {
        _timer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
