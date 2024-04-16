import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:green_go/features/core/shared/extensions/dio_extensions.dart';
import 'package:green_go/features/profile/domain/add_card_model.dart';
import 'package:green_go/features/profile/domain/card_model.dart';

import '../../core/domain/failure.dart';

class CardsRepository {
  final Dio _dio;
  CardsRepository(this._dio);

  Future<Either<Failure, List<CardModel>>> getCards() async {
    try {
      final Response response = await _dio.get(
        "/user/card",
      );
      if (response.statusCode == 200) {
        return right(
            (response.data as List).map((e) => CardModel.fromJson(e)).toList());
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
          Failure.server(e.response?.data['message']),
        );
      }
    }
  }

  Future<Either<Failure, bool>> removeCard(int cardId) async {
    try {
      final Response response = await _dio.post(
        "/user/card/remove/$cardId",
      );
      if (response.statusCode == 200) {
        return right(true);
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
          Failure.server(e.response?.data['message']),
        );
      }
    }
  }

  Future<Either<Failure, bool>> fillBalance(int cardId, int total) async {
    try {
      final Response response = await _dio.post("/user/card/invoice", data: {
        "cardId": cardId,
        "total": total,
      });
      if (response.statusCode == 200) {
        return right(true);
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
          Failure.server(e.response?.data['message']),
        );
      }
    }
  }

  Future<Either<Failure, AddCardModel>> addCard(
      String cardId, String total) async {
    try {
      final Response response = await _dio.post("/user/card", data: {
        "number": cardId,
        "expire": total,
      });
      if (response.statusCode == 200) {
        return right(AddCardModel.fromJson(response.data));
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
          Failure.server(e.response?.data['message']),
        );
      }
    }
  }

  Future<Either<Failure, bool>> verifyCard(int cardId, String code) async {
    try {
      final Response response = await _dio.post("/user/card/verify", data: {
        "cardId": cardId,
        "code": code,
      });
      if (response.statusCode == 200) {
        return right(true);
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
          Failure.server(e.response?.data['message']),
        );
      }
    }
  }
}
