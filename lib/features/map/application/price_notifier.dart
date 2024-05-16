import 'package:green_go/features/map/application/rides_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PriceNotifier extends StateNotifier<double> {
  PriceNotifier() : super(0.0);

  void getPrice(RidesState ride) {
    state = switch (ride.actionState) {
      RideAction.pause => state + ride.rides[0].pausePricePerMinute,
      RideAction.pure => state + ride.rides[0].pricePerMinute,
      RideAction.pausing => state + ride.rides[0].pricePerMinute,
      RideAction.turnOn => state + ride.rides[0].pricePerMinute,
      RideAction.turningOn => state + ride.rides[0].pricePerMinute,
      RideAction.stop => state + ride.rides[0].pricePerMinute,
      RideAction.stoping => state + ride.rides[0].pricePerMinute,
      RideAction.feedback => state + ride.rides[0].pricePerMinute,
    };
  }

  void setInitialPrice(DateTime time, RidesState rideState) {
    final r = rideState.rides[0];
    if (r.pause != null) {
      final pricePerMin = (DateTime.now().difference(time).inMinutes -
              (r.pause!.finishedAt ?? DateTime.now()).difference(r.pause!.startAt!).inMinutes) *
          r.pricePerMinute;
      final pousePrice =
          (r.pause!.finishedAt ?? DateTime.now()).difference(r.pause!.startAt!).inMinutes * r.pausePricePerMinute;
      state = r.startPrice + pricePerMin + pousePrice;
    } else {
      final pricePerMin = (DateTime.now().difference(time).inMinutes * r.pricePerMinute);
      state = r.startPrice + pricePerMin;
    }
  }
}
