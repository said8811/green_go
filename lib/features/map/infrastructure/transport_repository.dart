import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:green_go/features/core/domain/failure.dart';
import 'package:green_go/features/core/shared/extensions/dio_extensions.dart';
import 'package:green_go/features/core/shared/extensions/response_extensions.dart';
import 'package:green_go/features/map/domain/single_transport_model.dart';

class TransportRepository {
  final Dio _dio;
  TransportRepository(this._dio);

  Future<Either<Failure, SingleTransportModel>> getTransport(
      double latitude, double longitude, String qrCode) async {
    try {
      final Response response =
          await _dio.get("/transport/$qrCode", queryParameters: {
        'latitude': latitude,
        'longitude': longitude,
      });
      if (response.isSuccessful) {
        return right(SingleTransportModel.fromJson(response.data));
      } else {
        return left(Failure.server(response.data?['message']));
      }
    } on DioException catch (e) {
      if (e.isConnectionError) {
        return left(const Failure.noConnection());
      }
      return left(Failure.server(e.response?.data['message']));
    }
  }

  Future<Either<Failure, bool>> start(
    double latitude,
    double longitude,
    String qrCode,
    int regionId,
    int tariffId,
  ) async {
    try {
      final Response response = await _dio.post("/start/", data: {
        'latitude': latitude,
        'longitude': longitude,
        "qr_code": qrCode,
        "regionId": regionId,
        "tariffId": tariffId
      });
      if (response.isSuccessful) {
        return right(true);
      } else {
        return left(Failure.server(response.data?['message']));
      }
    } on DioException catch (e) {
      if (e.isConnectionError) {
        return left(const Failure.noConnection());
      }
      return left(Failure.server(e.response?.data['message']));
    }
  }

  Future<Either<Failure, bool>> book(
    int id,
  ) async {
    try {
      final Response response = await _dio.post(
        "/book/$id",
      );
      if (response.isSuccessful) {
        return right(true);
      } else {
        return left(Failure.server(response.data?['message']));
      }
    } on DioException catch (e) {
      if (e.isConnectionError) {
        return left(const Failure.noConnection());
      }
      return left(Failure.server(e.response?.data['message']));
    }
  }
}
