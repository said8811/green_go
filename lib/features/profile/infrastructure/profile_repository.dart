import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:green_go/features/core/domain/failure.dart';
import 'package:green_go/features/core/shared/extensions/dio_extensions.dart';
import 'package:green_go/features/profile/domain/profile_model.dart';

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
}
