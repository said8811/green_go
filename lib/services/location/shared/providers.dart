import 'package:geolocator/geolocator.dart';
import 'package:green_go/features/core/shared/providers.dart';
import 'package:green_go/services/location/application/location_notifier.dart';
import 'package:green_go/services/location/infrastructure/location_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final locationProvider = Provider<LocationService>((ref) {
  return LocationService(ref.watch(dioProvider));
});

final locationStateProvider = StateNotifierProvider<LocationNotifier, Position?>((ref) {
  return LocationNotifier(ref.watch(locationProvider));
});
