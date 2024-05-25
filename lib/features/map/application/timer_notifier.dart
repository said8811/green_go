import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_notifier.freezed.dart';

@freezed
class TimerState with _$TimerState {
  factory TimerState({
    required int time,
  }) = _TimerState;

  factory TimerState.initial() => TimerState(time: 0);
}

class TimerNotifier extends StateNotifier<TimerState> {
  TimerNotifier() : super(TimerState.initial());
  Timer? _timer;
  void getTime(DateTime time) {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        state = state.copyWith(
          time: DateTime.now().difference(time).inSeconds,
        );
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
