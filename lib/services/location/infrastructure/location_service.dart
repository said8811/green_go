import 'dart:async';

// import 'package:dio/dio.dart';
import 'package:background_location_tracker/background_location_tracker.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:green_go/features/core/shared/extensions/dio_extensions.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../features/core/domain/failure.dart';
import '../../../features/core/domain/location_model.dart';
import '../../../features/core/shared/constants.dart';

class LocationService {
  final Dio _dio;
  LocationService(this._dio);
  StreamSubscription<Position>? _positionStreamSubscription;

  Future<Position?> getCurrentPosition() async {
    final permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) return null;
    return Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }

  Future<Position?> startLocationSending(String id) async {
    final permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) return null;
    _positionStreamSubscription = Geolocator.getPositionStream(
            locationSettings: const LocationSettings(
                distanceFilter: 20, timeLimit: Duration(hours: 5), accuracy: LocationAccuracy.high))
        .asBroadcastStream()
        .listen((position) {
      sendUserLocation(location: position, id: id);
    });
    return null;
  }

  Future<Either<Failure, Unit>> sendUserLocation({
    required Position location,
    required String id,
  }) async {
    try {
      final Response<Map<String, dynamic>> response = await _dio.patch(
        '/ride/location/$id',
        data: {
          'latitude': location.latitude,
          'longitude': location.longitude,
        },
      );
      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(Failure.server(response.data?['message'] as String?));
      }
    } on DioException catch (e) {
      if (e.isConnectionError) {
        return left(const Failure.noConnection());
      } else {
        return left(Failure.server(e.message));
      }
    }
  }

  void stopLocationSending() {
    _positionStreamSubscription?.cancel();
    _positionStreamSubscription = null;
  }

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

  Future<void> startBackgroundLocationService() async {
    await BackgroundLocationTrackerManager.startTracking(config: kAndroidConfig);
  }

  Future<void> stopBackgroundLocationService() async {
    await BackgroundLocationTrackerManager.stopTracking();
  }

  Future<bool> requestLocationPermission() async {
    final status = await Geolocator.requestPermission();
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

const kAndroidConfig = AndroidConfig(
  notificationIcon: '$kAppTitle is running in background',
  trackingInterval: Duration(seconds: 25),
  distanceFilterMeters: 200,
);
