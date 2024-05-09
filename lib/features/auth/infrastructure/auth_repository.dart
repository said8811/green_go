import '../../core/domain/failure.dart';
import '../../core/domain/network_exceptions.dart';
import '../../core/domain/user_model.dart';
import 'package:dartz/dartz.dart';

import 'auth_local_service.dart';
import 'auth_remote_service.dart';

class AuthRepository {
  final AuthLocalService _localService;
  final AuthRemoteService _remoteService;

  AuthRepository(this._localService, this._remoteService);

  UserModel? isSignedIn() {
    final user = _localService.setUser();
    return user;
  }

  UserModel? get user => _localService.setUser();

  Future<Either<Failure, UserModel>> signIn({
    required String phone,
    required String code,
  }) async {
    try {
      final failureOrSuccess = await _remoteService.signIn(phone: phone, code: code);
      return failureOrSuccess.fold(
        (failure) => left(failure),
        (user) async {
          await _localService.addUser(user: user);
          return right(user);
        },
      );
    } on RestApiException catch (e) {
      return left(Failure.server("${e.message}"));
    }
  }

  Future<Either<Failure, UserModel>> register({
    required String phone,
    required String name,
    required int code,
  }) async {
    try {
      final failureOrSuccess = await _remoteService.register(
        phone: phone,
        code: code,
        name: name,
      );
      return failureOrSuccess.fold(
        (failure) => left(failure),
        (user) async {
          await _localService.addUser(user: user);
          return right(user);
        },
      );
    } on RestApiException catch (e) {
      return left(Failure.server("${e.message}"));
    }
  }

  Future<Either<Failure, bool>> getCode(
    String phone, {
    required bool isRequestForRestor,
  }) async {
    final isSigned = await _remoteService.getCode(phone, isRequestForRestor: isRequestForRestor);
    return isSigned.fold((l) => left(l), (r) => right(r));
  }

  Future<Either<Failure, bool>> checkCode({
    required String phone,
    required int code,
  }) async {
    try {
      final isCodeTrue = await _remoteService.checkCode(code: code, phone: phone);
      return right(isCodeTrue);
    } on RestApiException catch (e) {
      if (e == RestApiException.connection()) {
        return left(const Failure.noConnection());
      }
      return left(Failure.server(e.message));
    }
  }

  Future<void> signOut() async {
    await _localService.removeUser();
  }

  Future<Either<Failure, Unit>> deleteAccount() async {
    try {
      final user = _localService.setUser();
      final unitOrFailure = await _remoteService.deleteAccount(userId: user!.id.toString());
      return unitOrFailure.fold(
        (l) => left(l),
        (r) async {
          await _localService.removeUser();
          return right(r);
        },
      );
    } on RestApiException catch (e) {
      if (e == RestApiException.connection()) {
        return left(const Failure.noConnection());
      }
      return left(Failure.server(e.message));
    }
  }

  Future<Either<Failure, Unit>> updateAccount(UserModel user) async {
    try {
      final newUser = await _remoteService.updateAccount(user: user);
      await _localService.removeUser();
      await _localService.addUser(user: newUser);
      return right(unit);
    } on RestApiException catch (e) {
      if (e == RestApiException.connection()) {
        return left(const Failure.noConnection());
      }
      return left(Failure.server(e.message));
    }
  }
}
