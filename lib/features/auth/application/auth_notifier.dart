import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/domain/failure.dart';
import '../../core/domain/user_model.dart';
import '../infrastructure/auth_repository.dart';

part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.authenticated(UserModel user) = _Authenticated;
  const factory AuthState.unAuthenticated() = _UnAuthenticated;
  const factory AuthState.failure(Failure failure) = _Failure;
}

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier(this._repository) : super(const AuthState.initial()) {
    checkAndUpdateStatus();
  }
  final AuthRepository _repository;

  void checkAndUpdateStatus() {
    final user = _repository.isSignedIn();
    state = user != null
        ? AuthState.authenticated(user)
        : const AuthState.unAuthenticated();
  }

  UserModel? get user => _repository.user;

  Future<void> signIn(UserModel user) async {
    state = AuthState.authenticated(user);
  }

  Future<void> register({
    required String phone,
    required String name,
    required String code,
    required String birthday,
    required String gender,
  }) async {
    state = const AuthState.loading();
    final failureOrSuccess = await _repository.register(
      phone: phone,
      code: code,
      name: name,
      birthday: birthday,
    );

    state = failureOrSuccess.fold(
      (l) => AuthState.failure(l),
      (r) => AuthState.authenticated(r),
    );
  }

  Future<void> signOut() async {
    await _repository.signOut();
    state = const AuthState.unAuthenticated();
  }

  Future<void> deleteAccount() async {
    state = const AuthState.loading();
    final unitOrFailure = await _repository.deleteAccount();
    state = unitOrFailure.fold(
      (l) => AuthState.failure(l),
      (r) => const AuthState.unAuthenticated(),
    );
  }

  // Future<void> updateUser(UserModel user) async {
  //   state = const AuthState.loading();
  //   // final userOrFailure = await _repository.updateAccount(user);

  //   state = AuthState.authenticated();
  // }
}
