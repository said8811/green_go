import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:green_go/features/core/domain/failure.dart';
import 'package:green_go/features/core/shared/extensions/dio_extensions.dart';
import 'package:green_go/features/map/domain/ride_model.dart';
import 'package:green_go/features/profile/domain/profile_model.dart';
import 'package:green_go/features/profile/domain/qa_category_model.dart';

class ProfileRepository {
  final Dio _dio;
  ProfileRepository(this._dio);

  Future<Either<Failure, ProfileModel>> getProfile() async {
    try {
      final Response<Map<String, dynamic>> response =
          await _dio.get("/profile");
      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return right(ProfileModel.fromJson(data));
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

  Future<Either<Failure, List<RideModel>>> getHistory(
      String? from, String? to, int page) async {
    try {
      final Response<Map<String, dynamic>> response =
          await _dio.get("/rides", queryParameters: {
        'from': from,
        'to': to,
        'page': page,
        'pageSize': 22,
      });
      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return right(
          (data['rides'] as List).map((e) => RideModel.fromJson(e)).toList(),
        );
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

  Future<Either<Failure, List<QACategoryModel>>> getAnswers() async {
    try {
      final Response response = await _dio.get("/answers");

      if (response.statusCode == 200) {
        final data = response.data as List<dynamic>;
        return right(
          (data).map((e) => QACategoryModel.fromJson(e)).toList(),
        );
      } else {
        return left(Failure.server(response.data?[0]['message']));
      }
    } on DioException catch (e) {
      if (e.isConnectionError) {
        return left(const Failure.noConnection());
      }
      return left(Failure.server(e.response?.data['message']));
    }
  }

  Future<Either<Failure, bool>> updateProfile(
      String name, String language) async {
    try {
      final Response response = await _dio.post("/update-profile", data: {
        "name": name,
        "language": language,
      });

      if (response.statusCode == 200) {
        return right(
          true,
        );
      } else {
        return left(Failure.server(response.data?[0]['message']));
      }
    } on DioException catch (e) {
      if (e.isConnectionError) {
        return left(const Failure.noConnection());
      }
      return left(Failure.server(e.response?.data['message']));
    }
  }
}
