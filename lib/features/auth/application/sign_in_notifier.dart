import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/domain/failure.dart';
import '../../core/domain/user_model.dart';
import '../infrastructure/auth_repository.dart';
part 'sign_in_notifier.freezed.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const SignInFormState._();
  const factory SignInFormState({
    required bool isRegistered,
    required bool hasCodeSent,
    required bool isLoading,
    required String phone,
    required String code,
    required bool sentCodeIsTrue,
    Failure? error,
    DateTime? codeSentTime,
    UserModel? user,
    required bool requestForUpdatePass,
  }) = _SignInFormState;

  factory SignInFormState.initial() => const SignInFormState(
        isRegistered: false,
        code: '',
        isLoading: false,
        phone: '',
        hasCodeSent: false,
        sentCodeIsTrue: false,
        requestForUpdatePass: false,
      );
}

class SignInFormNotifier extends StateNotifier<SignInFormState> {
  final AuthRepository _repository;
  SignInFormNotifier(this._repository) : super(SignInFormState.initial());

  Future<void> getCode(
    String phone, {
    required bool isRequestForRestor,
  }) async {
    state = state.copyWith(isLoading: true, error: null, phone: phone);
    final failureOrIsRegistered = await _repository.getCode(
      phone,
      isRequestForRestor: isRequestForRestor,
    );
    state = failureOrIsRegistered.fold(
      (l) => state.copyWith(error: l, isLoading: false),
      (r) => state.copyWith(
        requestForUpdatePass: isRequestForRestor,
        isLoading: false,
        error: null,
        isRegistered: r,
        hasCodeSent: true,
        codeSentTime: DateTime.now(),
      ),
    );
  }

  Future<void> checkCode({
    required String phone,
    required String code,
  }) async {
    state = state.copyWith(error: null, isLoading: true, phone: phone);
    final failureOrIsRegistered = await _repository.checkCode(
      code: code,
      phone: state.phone,
    );
    return failureOrIsRegistered.fold(
      (l) => state = state.copyWith(error: l, isLoading: false),
      (r) => state = state.copyWith(
        isLoading: false,
        error: null,
        sentCodeIsTrue: r,
        code: r ? code : '',
      ),
    );
  }

  Future<void> signIn({
    required String phone,
    required String code,
  }) async {
    state = state.copyWith(error: null, isLoading: true, phone: phone);
    final failureOrIsRegistered =
        await _repository.signIn(code: code, phone: phone);
    state = failureOrIsRegistered.fold(
      (l) => state.copyWith(error: l, isLoading: false),
      (r) => state.copyWith(error: null, isLoading: false, user: r),
    );
  }

  void setSendCodeFalse() {
    state = state.copyWith(hasCodeSent: false, sentCodeIsTrue: false);
  }
}
