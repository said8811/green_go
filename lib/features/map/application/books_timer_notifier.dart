import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class BooksTimerNotifier extends StateNotifier<int> {
  BooksTimerNotifier() : super(0);

  int getTime(DateTime time) {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      state = DateTime.now().difference(time).inSeconds;
    });
    return DateTime.now().difference(time).inSeconds;
  }
}
