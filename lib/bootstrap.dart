import 'dart:async';

// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:background_location_tracker/background_location_tracker.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:green_go/features/core/shared/constants.dart';
import 'package:green_go/features/core/shared/extensions/dio_extensions.dart';
import 'package:green_go/injection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import 'package:stack_trace/stack_trace.dart' as stack_trace;
import 'features/core/domain/failure.dart';
import 'features/core/shared/providers.dart';
import 'services/location/infrastructure/location_service.dart';

@pragma('vm:entry-point')
void backgroundCallback() {
  BackgroundLocationTrackerManager.handleBackgroundUpdated(
    (data) async {
      await sendUserLocation(location: data);
    },
  );
}

bool _locationSendInProgress = false;

final _dio = Dio(dioBaseOptions);

final dioBaseOptions = BaseOptions(
  followRedirects: false,
  baseUrl: 'https://backend.green-go.uz/v1/api',
  sendTimeout: const Duration(seconds: 60),
  receiveTimeout: const Duration(seconds: 60),
  connectTimeout: const Duration(seconds: 60),
);

@pragma('vm:entry-point')
Future<Either<Failure, Unit>> sendUserLocation({
  required BackgroundLocationUpdateData location,
}) async {
  String userId = '';
  SharedPreferences prefs;

  try {
    if (_locationSendInProgress) {
      return left(const Failure.server('Request already in progress'));
    }
    _locationSendInProgress = true;
    prefs = await SharedPreferences.getInstance();
    final lastLocationSentTime =
        prefs.getString('lastLocationSent') != null ? DateTime.parse(prefs.getString('lastLocationSent')!) : null;

    if (lastLocationSentTime != null &&
        DateTime.now().difference(lastLocationSentTime).abs() < const Duration(minutes: 1)) {
      return left(const Failure.server('Location already sent'));
    }
    userId = prefs.getString('userId') ?? '';
    if (userId.isEmpty) {
      _locationSendInProgress = false;
      return left(const Failure.fatalError());
    }
    final token = prefs.getString(kTokenKey) ?? "";
    _dio.options.headers = {'Authorization': token};

    if (userId.isEmpty) {
      return left(const Failure.fatalError());
    }

    final Response<Map<String, dynamic>> response = await _dio.post(
      '/send-location',
      data: {
        'courierId': userId,
        'latitude': location.lat.toString(),
        'longitude': location.lon.toString(),
      },
    );
    if (response.statusCode == 200) {
      await prefs.setString('lastLocationSent', DateTime.now().toString());

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
  } finally {
    _locationSendInProgress = false;
  }
}

@pragma('vm:entry-point')
Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();
  await BackgroundLocationTrackerManager.initialize(
    backgroundCallback,
    config: const BackgroundLocationTrackerConfig(
      androidConfig: kAndroidConfig,
      loggingEnabled: !kIsProd,
      iOSConfig: IOSConfig(
        activityType: ActivityType.NAVIGATION,
        restartAfterKill: true,
      ),
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();

  final injection = Injection();
  final appInjections = await injection.setUpInjection();

  runApp(
    ProviderScope(
      overrides: [
        appConfigProvider.overrideWithValue(appInjections.appConfig),
        hiveDataStoreProvider.overrideWithValue(appInjections.dataStore),
        deviceDetailsProvider.overrideWithValue(appInjections.details),
        sharedPrefsProvider.overrideWithValue(appInjections.sharedPrefs),
        secureStorageProvider.overrideWithValue(appInjections.secureStorage),
      ],
      child: await builder(),
    ),
  );
}
