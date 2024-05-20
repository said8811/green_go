import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_go/features/core/domain/failure.dart';
import 'package:green_go/features/map/domain/books_model.dart';
import 'package:green_go/features/map/domain/finish_model.dart';
import 'package:green_go/features/map/domain/ride_model.dart';
import 'package:green_go/features/map/domain/single_transport_model.dart';
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
  feedback,
}

@freezed
class RidesState with _$RidesState {
  factory RidesState({
    required List<RideModel> rides,
    required List<BookModel> books,
    required bool isLoading,
    SingleTransportModel? transport,
    Failure? error,
    String? imgPath,
    FinishModel? finish,
    required RideAction actionState,
  }) = _RidesState;
  factory RidesState.initial() => RidesState(rides: [], isLoading: false, actionState: RideAction.pure, books: []);
}

class RidesNotifier extends StateNotifier<RidesState> {
  final RideRepository _repository;

  RidesNotifier(this._repository) : super(RidesState.initial()) {
    getRides();
  }

  Future<void> getRides() async {
    state = state.copyWith(isLoading: true);
    final dataOrFailure = await _repository.getRides();
    dataOrFailure.fold((l) => state = state.copyWith(error: l, isLoading: false), (data) async {
      if (data.books.isNotEmpty) {
        final dataOrFailure = await _repository.getTransport(data.books[0].qrCode);
        state = dataOrFailure.fold(
            (l) => state.copyWith(
                  error: l,
                  books: data.books,
                  rides: data.rides,
                ),
            (r) => state.copyWith(
                  rides: data.rides,
                  isLoading: false,
                  transport: r,
                  books: data.books,
                  actionState: data.rides[0].status == 0
                      ? RideAction.pure
                      : data.rides[0].status == 1
                          ? RideAction.pause
                          : RideAction.stop,
                ));
      } else {
        final status = data.rides.isEmpty ? 0 : data.rides[0].status;
        state = state.copyWith(
          rides: data.rides,
          isLoading: false,
          books: data.books,
          actionState: status == 0
              ? RideAction.pure
              : status == 1
                  ? RideAction.pause
                  : RideAction.stop,
        );
      }
    });
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
        rideId: state.rides[0].id, latitude: latitude, longitude: longitude, imgPath: state.imgPath!);
    succesOrFailure.fold((l) => state = state.copyWith(error: l, actionState: action), (data) async {
      state = state.copyWith(
        rides: [],
        books: [],
        finish: data,
        actionState: RideAction.stop,
      );
    });
  }

  Future<bool> feedBack({required String message, required int rate}) async {
    final dataOrFailure = await _repository.feedBack(rideId: state.finish?.id ?? 0, message: message, rate: rate);
    return dataOrFailure.fold((l) => false, (r) => true);
  }

  void cleanError() {
    state = state.copyWith(error: null);
  }

  void setImagePath(String path) {
    state = state.copyWith(imgPath: path);
  }

  void changeState(RideAction action) {
    state = state.copyWith(actionState: action);
  }
}
