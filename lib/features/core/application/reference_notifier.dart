import 'package:green_go/features/core/domain/failure.dart';
import 'package:green_go/features/core/domain/reference_model.dart';
import 'package:green_go/features/core/infrastructure/reference_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'reference_notifier.freezed.dart';

@freezed
class ReferenceState with _$ReferenceState {
  factory ReferenceState({
    required bool isLoading,
    ReferenceModel? data,
    Failure? error,
  }) = _ReferenceState;

  factory ReferenceState.initial() => ReferenceState(
        isLoading: false,
      );
}

class ReferenceNotifier extends StateNotifier<ReferenceState> {
  final ReferenceRepository _repository;
  ReferenceNotifier(this._repository) : super(ReferenceState.initial());

  Future<void> getData(double? latitude, double? longitude) async {
    state = state.copyWith(isLoading: true);
    final dataOrFailure = await _repository.getData(latitude, longitude);
    state = dataOrFailure.fold(
      (l) => state.copyWith(error: l, isLoading: false),
      (r) => state.copyWith(data: r, isLoading: false),
    );
  }
}
