import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_go/features/core/domain/failure.dart';
import 'package:green_go/features/map/domain/ride_model.dart';
import 'package:green_go/features/map/infrastructure/ride_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'rides_notifier.freezed.dart';

enum RideAction {
  pure,
  pause,
  pausing,
  turnOn,
  turningOn,
  stop,
  stoping,
}

@freezed
class RidesState with _$RidesState {
  factory RidesState({
    required List<RideModel> rides,
    required bool isLoading,
    Failure? error,
    String? imgPath,
    required RideAction actionState,
  }) = _RidesState;
  factory RidesState.initial() =>
      RidesState(rides: [], isLoading: false, actionState: RideAction.pure);
}

class RidesNotifier extends StateNotifier<RidesState> {
  final RideRepository _repository;
  RidesNotifier(this._repository) : super(RidesState.initial()) {
    getRides();
  }

  Future<void> getRides() async {
    state = state.copyWith(isLoading: true);
    final dataOrFailure = await _repository.getRides();
    state = dataOrFailure.fold(
      (l) => state.copyWith(error: l, isLoading: false),
      (r) => state.copyWith(rides: r, isLoading: false),
    );
  }

  Future<void> pause() async {
    state = state.copyWith(actionState: RideAction.pausing);
    final succesOrFailure = await _repository.pauseRide(state.rides[0].id);
    state = succesOrFailure.fold(
      (l) => state.copyWith(error: l, actionState: RideAction.pure),
      (r) => state.copyWith(actionState: RideAction.pause),
    );
  }

  Future<void> turnOn() async {
    state = state.copyWith(actionState: RideAction.turningOn);
    final succesOrFailure = await _repository.turnOnRide(state.rides[0].id);
    state = succesOrFailure.fold(
      (l) => state.copyWith(error: l, actionState: RideAction.pause),
      (r) => state.copyWith(actionState: RideAction.pure),
    );
  }

  Future<void> finish({
    double? latitude,
    double? longitude,
  }) async {
    final action = state.actionState;
    state = state.copyWith(actionState: RideAction.stoping);
    final succesOrFailure = await _repository.finish(
        rideId: state.rides[0].id,
        latitude: latitude,
        longitude: longitude,
        imgPath: state.imgPath!);
    state = succesOrFailure.fold(
      (l) => state.copyWith(error: l, actionState: action),
      (r) => state.copyWith(actionState: RideAction.stop),
    );
  }

  void cleanError() {
    state = state.copyWith(error: null);
  }

  void setImagePath(String path) {
    state = state.copyWith(imgPath: path);
  }
}
