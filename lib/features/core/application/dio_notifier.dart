import 'package:dio/dio.dart';
import 'package:green_go/features/core/domain/app_config.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../services/logger/dio_logger.dart';
import '../shared/constants.dart';

class DioNotifier extends StateNotifier<Dio> {
  final SharedPreferences _pref;
  final AppConfig appConfig;

  DioNotifier(this._pref, this.appConfig) : super(Dio()) {
    setUp();
  }

  void setUp() {
    const timeOutTime = Duration(seconds: 10);
    final dioBaseOptions = BaseOptions(
      baseUrl: appConfig.baseApiUrl,
      headers: {
        'Authorization': _pref.getString(kTokenKey),
      },
      followRedirects: false,
      sendTimeout: timeOutTime,
      receiveTimeout: timeOutTime,
      connectTimeout: timeOutTime,
    );

    state = Dio(dioBaseOptions);
    if (!kIsProd) {
      state.interceptors.add(DioLogInterceptor());
    }
  }
}
