import 'package:green_go/features/core/domain/failure.dart';
import 'package:green_go/features/map/domain/ride_model.dart';
import 'package:green_go/features/profile/infrastructure/profile_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rides_history_notifier.freezed.dart';

@freezed
class RidesHistoryState with _$RidesHistoryState {
  factory RidesHistoryState({
    required int page,
    required int pageSize,
    required List<RideModel> rides,
    required bool isLoading,
    Failure? error,
  }) = _RidesHistoryState;

  factory RidesHistoryState.initial() =>
      RidesHistoryState(page: 1, pageSize: 10, rides: [], isLoading: false);
}

class HistoryNotifier extends StateNotifier<RidesHistoryState> {
  final ProfileRepository _repository;
  HistoryNotifier(this._repository) : super(RidesHistoryState.initial()) {
    getHistory(
        DateTime.now().subtract(const Duration(days: 7)), DateTime.now());
  }

  Future<void> getHistory(
    DateTime from,
    DateTime to,
  ) async {
    state = state.copyWith(isLoading: true);
    final dataOrFailure = await _repository.getHistory(
        from.toString(), to.toString(), state.page);

    state = dataOrFailure.fold(
        (l) => state.copyWith(error: l, isLoading: false),
        (r) => state.copyWith(rides: r, isLoading: false));
  }
}
