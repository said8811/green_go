import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:green_go/features/core/domain/failure.dart';
import 'package:green_go/features/core/domain/reference_model.dart';
import 'package:green_go/features/core/shared/extensions/dio_extensions.dart';
import 'package:green_go/features/core/shared/extensions/response_extensions.dart';
import 'package:green_go/services/location/infrastructure/location_service.dart';

class ReferenceRepository {
  final Dio _dio;
  final LocationService _service;
  ReferenceRepository(this._dio, this._service);

  Future<Either<Failure, ReferenceModel>> getData() async {
    try {
      final latLong = await _service.getCurrentPosition();
      final Response response = await _dio.get("/data/", queryParameters: {
        'latitude': latLong?.latitude,
        'longitude': latLong?.longitude,
      });
      if (response.isSuccessful) {
        return right(ReferenceModel.fromJson(response.data));
      } else {
        return left(Failure.server(response.data?['message']));
      }
    } on DioException catch (e) {
      if (e.isConnectionError) {
        return left(const Failure.noConnection());
      }
      return left(Failure.server(e.response?.statusCode.toString()));
    }
  }
}
