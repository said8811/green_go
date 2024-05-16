import 'package:green_go/features/core/shared/providers.dart';
import 'package:green_go/features/map/application/books_timer_notifier.dart';
import 'package:green_go/features/map/application/map_notifier.dart';
import 'package:green_go/features/map/application/rides_notifier.dart';
import 'package:green_go/features/map/application/timer_notifier.dart';
import 'package:green_go/features/map/application/transport_notifier.dart';
import 'package:green_go/features/map/infrastructure/ride_repository.dart';
import 'package:green_go/features/map/infrastructure/transport_repository.dart';
import 'package:green_go/services/location/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../application/price_notifier.dart';

final mapNotifierProvider = StateNotifierProvider<MapNotifierNotifier, MapNotifierState>((ref) {
  return MapNotifierNotifier();
});

final transportRepository = Provider<TransportRepository>((ref) => TransportRepository(ref.watch(dioProvider)));

final transportStateProvider = StateNotifierProvider<TransportNotifier, TransportState>((ref) {
  return TransportNotifier(ref.watch(transportRepository));
});

final rideProvider = Provider<RideRepository>((ref) {
  return RideRepository(ref.watch(dioProvider), ref.watch(locationProvider));
});

final ridesNotifierProvider = StateNotifierProvider<RidesNotifier, RidesState>((ref) {
  return RidesNotifier(ref.watch(rideProvider));
});

final timerNotifierProvider = StateNotifierProvider.autoDispose<TimerNotifier, TimerState>((ref) {
  return TimerNotifier();
});

final priceNotifierProvider = StateNotifierProvider.autoDispose<PriceNotifier, double>((ref) {
  return PriceNotifier();
});

final booksTimerNotifierProvider = StateNotifierProvider.autoDispose<BooksTimerNotifier, int>((ref) {
  return BooksTimerNotifier();
});
