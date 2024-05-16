import 'dart:async';

import 'package:green_go/features/map/application/rides_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_notifier.freezed.dart';

@freezed
class TimerState with _$TimerState {
  factory TimerState({
    required int time,
    required double price,
  }) = _TimerState;

  factory TimerState.initial() => TimerState(time: 0, price: 0.0);
}

class TimerNotifier extends StateNotifier<TimerState> {
  TimerNotifier() : super(TimerState.initial());
  Timer? _timer;
  void getTime(DateTime time, RidesState ride) {
    if (state.price == 0.0) {
      state = state.copyWith(price: ride.rides[0].total != 0 ? ride.rides[0].total : ride.rides[0].startPrice);
    }
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        state = state.copyWith(
          time: DateTime.now().difference(time).inSeconds,
        );
        if (DateTime.now().difference(time).inSeconds % 60 == 0) {
          state = state.copyWith(
              price: switch (ride.actionState) {
            RideAction.pause => state.price + ride.rides[0].pausePricePerMinute,
            RideAction.pure => state.price + ride.rides[0].pricePerMinute,
            RideAction.pausing => state.price + ride.rides[0].pricePerMinute,
            RideAction.turnOn => state.price + ride.rides[0].pricePerMinute,
            RideAction.turningOn => state.price + ride.rides[0].pricePerMinute,
            RideAction.stop => state.price + ride.rides[0].pricePerMinute,
            RideAction.stoping => state.price + ride.rides[0].pricePerMinute,
            RideAction.feedback => state.price + ride.rides[0].pricePerMinute,
          });
        }
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
