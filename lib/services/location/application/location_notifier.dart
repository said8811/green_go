import 'package:geolocator/geolocator.dart';
import 'package:green_go/services/location/infrastructure/location_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LocationNotifier extends StateNotifier<Position?> {
  final LocationService _service;
  LocationNotifier(this._service) : super(null) {
    getCurrentPosition();
  }

  Future<void> getCurrentPosition() async {
    final location = await _service.getCurrentPosition();
    state = location;
  }
}
