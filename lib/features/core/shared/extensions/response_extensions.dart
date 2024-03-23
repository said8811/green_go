import 'package:dio/dio.dart';

extension ResponseX on Response {
  // ignore: avoid_dynamic_calls
  bool get isSuccessful => statusCode == 200 || statusCode == 201;
}
