import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/core/domain/app_config.dart';
import 'features/core/infrastructure/device_details.dart';
import 'features/core/infrastructure/hive_datastore.dart';
import 'features/core/shared/constants.dart';
import 'gen/assets.gen.dart';
import 'services/logger/dio_logger.dart';

part 'injection.freezed.dart';

@freezed
class AppInjections with _$AppInjections {
  const AppInjections._();

  const factory AppInjections({
    required AppConfig appConfig,
    required HiveDataStore dataStore,
    required DeviceDetails? details,
    required SharedPreferences sharedPrefs,
    required FlutterSecureStorage secureStorage,
    required Dio dio,
  }) = _AppInjections;
}

class Injection {
  Future<AppInjections> setUpInjection() async {
    final configFile = await rootBundle.loadString(Assets.config.main);
    final dynamic configData = jsonDecode(configFile);
    final appConfig = AppConfig.fromJson(configData as Map<String, dynamic>);

    final details = DeviceInfoDetails();
    final detailsInfo = await details.getDeviceDetails();
    final dataStore = HiveDataStore();
    await dataStore.init();
    final sharedPrefs = await SharedPreferences.getInstance();
    const secureStorage = FlutterSecureStorage();

    const timeOutTime = Duration(seconds: 10);
    final dioBaseOptions = BaseOptions(
      baseUrl: appConfig.baseApiUrl,
      headers: {
        'Authorization': sharedPrefs.getString(kTokenKey),
      },
      followRedirects: false,
      sendTimeout: timeOutTime,
      receiveTimeout: timeOutTime,
      connectTimeout: timeOutTime,
    );

    final dio = Dio(dioBaseOptions);

    if (!kIsProd) {
      dio.interceptors.add(DioLogInterceptor());
    }

    return AppInjections(
      appConfig: appConfig,
      dataStore: dataStore,
      details: detailsInfo,
      dio: dio,
      sharedPrefs: sharedPrefs,
      secureStorage: secureStorage,
    );
  }
}
