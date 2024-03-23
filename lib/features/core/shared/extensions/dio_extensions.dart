import 'dart:io';

import 'package:dio/dio.dart';
import 'package:green_go/features/core/domain/failure.dart';

extension DioErrorX on DioException {
  bool get isConnectionError =>
      (error is SocketException) ||
      type == DioExceptionType.receiveTimeout ||
      type == DioExceptionType.sendTimeout ||
      type == DioExceptionType.connectionError ||
      type == DioExceptionType.connectionTimeout;

  String? get errMessage => message;

  // ((response?.data?.runtimeType is Map<String, dynamic>)?['message'] as String?) ??

  Failure get failure {
    if (isConnectionError) {
      return const Failure.noConnection();
    } else {
      return Failure.server(errMessage);
    }
  }
}
