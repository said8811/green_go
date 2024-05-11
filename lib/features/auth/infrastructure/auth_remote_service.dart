import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:green_go/features/core/shared/extensions/dio_extensions.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/domain/failure.dart';
import '../../core/domain/network_exceptions.dart';
import '../../core/domain/user_model.dart';
import '../../core/infrastructure/device_details.dart';
import '../../core/shared/constants.dart';

class AuthRemoteService {
  final Dio _dio;
  final SharedPreferences _pref;
  final DeviceDetails? _details;

  AuthRemoteService(this._dio, this._details, this._pref);

  final platform = Platform.isIOS ? 'iOS' : 'Android';

  Future<Either<Failure, UserModel>> signIn({
    required String phone,
    required String code,
  }) async {
    final params = {
      "phone": phone,
      "code": int.parse(code),
      "deviceId": _details?.deviceId,
      "system": _details?.system,
      "systemVersion": _details?.systemVersion,
      "systemName": _details?.systemName,
      "appVersion": _details?.appVersion,
      "deviceName": _details?.deviceName,
    };

    final formData = params;

    try {
      final Response<Map<String, dynamic>> response = await _dio.post('/auth', data: formData);
      if (response.statusCode == 200) {
        final responseData = (response.data as Map).cast<String, dynamic>();
        _pref.setString(kTokenKey, responseData['accessToken']);
        final user = UserModel.fromJson(responseData);
        return right(user);
      } else {
        return left(Failure.server(response.data?['message'] as String?));
      }
    } on DioException catch (e) {
      if (e.isConnectionError) {
        return left(const Failure.noConnection());
      } else {
        return left(Failure.server(e.response?.data['message']));
      }
    }
  }

  Future<Either<Failure, UserModel>> register({
    required String phone,
    required String name,
    required int code,
  }) async {
    final params = {
      "phone": phone,
      "code": code,
      "name": name,
      "device": _details?.deviceId,
      "system": _details?.system,
      "systemVersion": _details?.systemVersion,
      "systemName": _details?.systemName,
      "appVersion": _details?.appVersion,
      "deviceName": _details?.deviceName,
    };

    try {
      final Response<Map<String, dynamic>> response = await _dio.post('/register', data: params);
      if (response.statusCode == 200) {
        final responseData = (response.data as Map).cast<String, dynamic>();
        final user = UserModel.fromJson(responseData);
        _pref.setString(kTokenKey, responseData['accessToken']);
        return right(user);
      } else {
        return left(Failure.server(response.data?['message'] as String?));
      }
    } on DioException catch (e) {
      if (e.isConnectionError) {
        return left(const Failure.noConnection());
      } else {
        return left(Failure.server(e.response?.data['message']));
      }
    }
  }

  Future<Either<Failure, bool>> getCode(
    String phone, {
    required bool isRequestForRestor,
  }) async {
    final formData = {
      'phone': phone,
      // 'resend': isRequestForRestor ? '1' : '0',
    };
    try {
      final Response<Map<String, dynamic>> response = await _dio.post('/send-code', data: formData);
      if (response.statusCode == 200) {
        final responseData = response.data as Map<String, dynamic>;

        if (responseData['isRegistered'] == true) {
          return right(true);
        } else {
          return right(false);
        }
      } else {
        return left(Failure.server(response.data?['message']));
      }
    } on DioException catch (e) {
      if (e.isConnectionError) {
        return left(const Failure.noConnection());
      }
      return left(Failure.server(e.response?.data?['message']));
    }
  }

  Future<bool> checkCode({
    required int code,
    required String phone,
  }) async {
    try {
      final Response<Map<String, dynamic>> response =
          await _dio.post('/check-code', data: {'phone': phone, 'code': code});
      if (response.statusCode == 200) {
        return true;
      } else if (response.statusCode == 200) {
        throw RestApiException(response.data?['message'] as String?);
      } else {
        throw RestApiException(response.data?['message'] as String?);
      }
    } on DioException catch (e) {
      if (e.isConnectionError) {
        throw RestApiException.connection();
      }
      throw RestApiException(e.message);
    }
  }

  Future<UserModel> updateAccount({
    required UserModel user,
  }) async {
    final params = {
      "id": user.id,
      "name": user.name,
    };
    final formData = FormData.fromMap(params);
    try {
      final Response<Map<String, dynamic>> response = await _dio.post('/update-personal-data', data: formData);
      if (response.statusCode == 200) {
        final responseData = (response.data?['data'] as Map).cast<String, dynamic>();
        final user = UserModel.fromJson(responseData);
        return user;
      } else {
        throw RestApiException(response.data?['message'] as String?);
      }
    } on DioException catch (e) {
      if (e.isConnectionError) {
        throw RestApiException.connection();
      } else {
        throw RestApiException(e.message);
      }
    }
  }

  Future<Either<Failure, Unit>> deleteAccount({
    required String userId,
  }) async {
    final params = {
      "id": userId,
      "system": kPlatform,
    };
    final formData = FormData.fromMap(params);
    try {
      final Response<Map<String, dynamic>> response = await _dio.post('/deactivate', data: formData);

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        throw RestApiException(response.data?['message'] as String?);
      }
    } on DioException catch (e) {
      if (e.isConnectionError) {
        throw RestApiException.connection();
      } else {
        throw RestApiException(e.message);
      }
    }
  }
}
