import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:green_go/features/core/shared/extensions/dio_extensions.dart';
import 'package:green_go/features/core/shared/extensions/response_extensions.dart';
import 'package:green_go/features/map/domain/ride_model.dart';

import '../../core/domain/failure.dart';

class RideRepository {
  final Dio _dio;
  RideRepository(this._dio);

  Future<Either<Failure, List<RideModel>>> getRides() async {
    try {
      final Response response = await _dio.get("/ride/");
      if (response.isSuccessful) {
        return right((response.data['rides'] as List)
            .map((e) => RideModel.fromJson(e))
            .toList());
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

  Future<Either<Failure, bool>> finish(
      {required int rideId,
      required double? latitude,
      required double? longitude,
      required String imgPath}) async {
    final formData = FormData.fromMap({
      'rideId': rideId,
      'latitude': latitude,
      'longitude': longitude,
      'image_file': await MultipartFile.fromFile(imgPath)
    });
    try {
      final Response response = await _dio.post("/finish/", data: formData);
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
