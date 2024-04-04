import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:green_go/features/core/shared/extensions/dio_extensions.dart';

import '../../core/domain/failure.dart';

class MapImageRepostiory {
  final Dio _dio;
  MapImageRepostiory(this._dio);

  Future<Either<Failure, Uint8List>> getImage(List<String> latlongs) async {
    try {
      final Response<List<int>> response = await _dio.get(
        'https://static-maps.yandex.ru/1.x/?pl=${latlongs.reduce((value, element) => "$value,$element")}&l=map',
        options: Options(responseType: ResponseType.bytes),
      );
      if (response.statusCode == 200) {
        return right(Uint8List.fromList(response.data!));
      } else {
        return left(
          const Failure.local("Что-то пошло не так, попробуйте позже"),
        );
      }
    } on DioException catch (e) {
      if (e.isConnectionError) {
        return left(const Failure.noConnection());
      } else {
        return left(
          const Failure.server("Что-то пошло не так, попробуйте позже"),
        );
      }
    }
  }
}
