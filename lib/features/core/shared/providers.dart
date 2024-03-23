import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:green_go/features/core/application/dio_notifier.dart';
import 'package:green_go/features/core/infrastructure/device_details.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../domain/app_config.dart';
import '../infrastructure/hive_datastore.dart';

final appConfigProvider = Provider<AppConfig>(
  (_) => throw UnimplementedError(),
);

final dioProvider = StateNotifierProvider<DioNotifier, Dio>((ref) {
  return DioNotifier(
      ref.watch(sharedPrefsProvider), ref.watch(appConfigProvider));
});

final hiveDataStoreProvider = Provider<HiveDataStore>(
  (_) => throw UnimplementedError(),
);

final sharedPrefsProvider = Provider<SharedPreferences>(
  (ref) => throw UnimplementedError(),
);

final deviceDetailsProvider =
    Provider<DeviceDetails?>((ref) => throw UnimplementedError());

final secureStorageProvider = Provider<FlutterSecureStorage>(
  (ref) => throw UnimplementedError(),
);
