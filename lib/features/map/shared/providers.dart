import 'package:green_go/features/core/shared/providers.dart';
import 'package:green_go/features/map/application/map_notifier.dart';
import 'package:green_go/features/map/application/rides_notifier.dart';
import 'package:green_go/features/map/application/transport_notifier.dart';
import 'package:green_go/features/map/infrastructure/ride_repository.dart';
import 'package:green_go/features/map/infrastructure/transport_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

final mapNotifierProvider =
    StateNotifierProvider<MapNotifierNotifier, List<MapObject>>((ref) {
  return MapNotifierNotifier();
});

final transportRepository = Provider<TransportRepository>(
    (ref) => TransportRepository(ref.watch(dioProvider)));

final transportStateProvider =
    StateNotifierProvider<TransportNotifier, TransportState>((ref) {
  return TransportNotifier(ref.watch(transportRepository));
});

final rideProvider = Provider<RideRepository>((ref) {
  return RideRepository(ref.watch(dioProvider));
});

final ridesNotifierProvider =
    StateNotifierProvider<RidesNotifier, RidesState>((ref) {
  return RidesNotifier(ref.watch(rideProvider));
});
