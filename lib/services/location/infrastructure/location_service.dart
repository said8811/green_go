import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../features/core/domain/location_model.dart';

class LocationService {
  LocationService();

  Future<Position?> getCurrentPosition() async {
    final permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) return null;
    return Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }

  Future<double?> getDistance({required LocationModel customerLocation}) async {
    if (await Permission.locationWhenInUse.isGranted &&
        await Permission.locationWhenInUse.serviceStatus.isEnabled) {
      final currentPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      final distance = Geolocator.distanceBetween(
        currentPosition.latitude,
        currentPosition.longitude,
        customerLocation.latitude,
        customerLocation.longitude,
      );
      return distance;
    }
    return null;
  }

  Future<bool> requestLocationPermission() async {
    await Geolocator.requestPermission();
    final status = await Geolocator.checkPermission();
    if (status == LocationPermission.whileInUse ||
        status == LocationPermission.always) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> isLocationEnabled() async {
    final status = await Geolocator.checkPermission();
    if (status == LocationPermission.whileInUse ||
        status == LocationPermission.always) {
      return true;
    } else {
      return false;
    }
  }
}
