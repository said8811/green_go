// ignore_for_file: library_private_types_in_public_api

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/domain/failure.dart';
import '../../core/domain/user_model.dart';
import '../infrastructure/auth_repository.dart';

part 'register_notifier.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const RegisterState._();
  const factory RegisterState({
    required _PersonalDetails? personalDetails,
    required bool agreeToTerms,
    required bool isLoading,
    UserModel? user,
    Failure? failure,
  }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(
        personalDetails: _PersonalDetails.initial(),
        agreeToTerms: false,
        isLoading: false,
      );
}

@freezed
class _PersonalDetails with _$PersonalDetails {
  const _PersonalDetails._();
  const factory _PersonalDetails({
    required String firstName,
  }) = __PersonalDetails;

  factory _PersonalDetails.initial() => const _PersonalDetails(
        firstName: '',
      );
}

class RegisterNotifier extends StateNotifier<RegisterState> {
  final AuthRepository _repository;
  RegisterNotifier(this._repository) : super(RegisterState.initial());

  void changePersonalDetails({
    String? name,
    String? lastName,
    DateTime? birthday,
  }) {
    state = state.copyWith(
      personalDetails: _PersonalDetails(
        firstName: name ?? state.personalDetails?.firstName ?? '',
      ),
    );
  }

  bool isValid() {
    return state.personalDetails != null && (state.personalDetails?.firstName.isNotEmpty ?? false);
  }

  void changeAgreeToTerms({required bool isAgree}) {
    state = state.copyWith(agreeToTerms: isAgree);
  }

  Future<void> register({
    required String phone,
    required int code,
    required String language,
  }) async {
    state = state.copyWith(isLoading: true, failure: null);
    final userOrFailure = await _repository.register(
        phone: phone, name: state.personalDetails!.firstName, code: code, language: language);
    state = userOrFailure.fold(
      (l) => state.copyWith(
        isLoading: false,
        failure: l,
      ),
      (r) => state.copyWith(
        isLoading: false,
        failure: null,
        user: r,
      ),
    );
  }
}
