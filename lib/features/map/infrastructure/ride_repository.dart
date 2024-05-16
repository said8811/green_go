import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:green_go/features/core/shared/extensions/dio_extensions.dart';
import 'package:green_go/features/core/shared/extensions/response_extensions.dart';
import 'package:green_go/features/map/domain/finish_model.dart';
import 'package:green_go/features/map/domain/rides_books_model.dart';
import 'package:green_go/services/location/infrastructure/location_service.dart';

import '../../core/domain/failure.dart';
import '../domain/single_transport_model.dart';

class RideRepository {
  final Dio _dio;
  final LocationService _service;
  RideRepository(this._dio, this._service);

  Future<Either<Failure, RidesBooksModel>> getRides() async {
    try {
      final Response response = await _dio.get("/ride/");
      if (response.isSuccessful) {
        return right(RidesBooksModel.fromJson(response.data));
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

  Future<Either<Failure, SingleTransportModel>> getTransport(String qrCode) async {
    try {
      final latlong = await _service.getCurrentPosition();
      if (latlong != null) {
        final Response response = await _dio.get("/transport/$qrCode", queryParameters: {
          'latitude': latlong.latitude,
          'longitude': latlong.longitude,
        });
        if (response.isSuccessful) {
          return right(SingleTransportModel.fromJson(response.data));
        } else {
          return left(Failure.server(response.data?['message']));
        }
      } else {
        return left(const Failure.noConnection());
      }
    } on DioException catch (e) {
      if (e.isConnectionError) {
        return left(const Failure.noConnection());
      }
      return left(Failure.server(e.response?.data['message']));
    }
  }

  Future<Either<Failure, bool>> pauseRide(int rideId) async {
    try {
      final Response response = await _dio.patch("/ride/pause/$rideId");
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

  Future<Either<Failure, bool>> turnOnRide(int rideId) async {
    try {
      final Response response = await _dio.patch("/ride/turn-on/$rideId");
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

  Future<Either<Failure, FinishModel>> finish(
      {required int rideId, required double? latitude, required double? longitude, required String imgPath}) async {
    final formData = FormData.fromMap({
      'rideId': rideId,
      'latitude': latitude,
      'longitude': longitude,
      // 'image_file': await MultipartFile.fromFile(imgPath)
    });
    try {
      final Response response = await _dio.post("/finish/", data: formData);
      if (response.isSuccessful) {
        return right(FinishModel.fromJson(response.data));
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

  Future<Either<Failure, bool>> feedBack({
    required int rideId,
    required String message,
    required int rate,
  }) async {
    final data = {'message': message, 'rate': rate, "id": rideId};
    try {
      final Response response = await _dio.patch("/ride/feedback/", data: data);
      if (response.isSuccessful) {
        return right(true);
      } else {
        return left(Failure.server(response.data?['message']));
      }
    } on DioException catch (e) {
      if (e.isConnectionError) {
        return left(const Failure.noConnection());
      }
      return left(const Failure.local());
    }
  }
}
