import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:green_go/features/core/domain/failure.dart';
import 'package:green_go/features/core/domain/reference_model.dart';
import 'package:green_go/features/core/shared/extensions/dio_extensions.dart';
import 'package:green_go/features/core/shared/extensions/response_extensions.dart';

class ReferenceRepository {
  final Dio _dio;
  ReferenceRepository(this._dio);

  Future<Either<Failure, ReferenceModel>> getData(
      double latitude, double longitude) async {
    try {
      final Response response = await _dio.get("/data/", queryParameters: {
        'latitude': latitude,
        'longitude': longitude,
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
      return left(Failure.server(e.message));
    }
  }
}
