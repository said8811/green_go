import 'dart:async';

// import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../features/core/domain/location_model.dart';

class LocationService {
  // final Dio _dio;
  LocationService();

  Future<Position?> getCurrentPosition() async {
    final permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) return null;
    return Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }

  // Future<void> startLocationTrack() async {
  //   final latLong = await getCurrentPosition();
  //   Geolocator.getPositionStream().listen((event) {
  //     final distance = getDistance(customerLocation: )
  //   });
  // }

  Future<double?> getDistance({required LocationModel customerLocation}) async {
    if (await Permission.locationWhenInUse.isGranted && await Permission.locationWhenInUse.serviceStatus.isEnabled) {
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
    if (status == LocationPermission.whileInUse || status == LocationPermission.always) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> isLocationEnabled() async {
    final status = await Geolocator.checkPermission();
    if (status == LocationPermission.whileInUse || status == LocationPermission.always) {
      return true;
    } else {
      return false;
    }
  }
}
