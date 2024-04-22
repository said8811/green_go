import 'package:green_go/features/core/domain/failure.dart';
import 'package:green_go/features/map/domain/single_transport_model.dart';
import 'package:green_go/features/map/infrastructure/transport_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'transport_notifier.freezed.dart';

enum TransportActionEnum {
  pure,
  starting,
  start,
  booking,
  book,
  ready,
  turnOn,
}

@freezed
class TransportState with _$TransportState {
  factory TransportState({
    required SingleTransportModel? transport,
    required bool isLoading,
    Failure? error,
    String? qrCode,
    required TransportActionEnum actionState,
  }) = _TransportState;
  factory TransportState.initial() => TransportState(
      transport: null, isLoading: false, actionState: TransportActionEnum.pure);
}

class TransportNotifier extends StateNotifier<TransportState> {
  final TransportRepository _repository;
  TransportNotifier(this._repository) : super(TransportState.initial());

  Future<void> getTransport(
      double latitude, double longitude, String qrCode) async {
    state = state.copyWith(isLoading: true);
    final dataOrFailure =
        await _repository.getTransport(latitude, longitude, qrCode);
    state = dataOrFailure.fold(
      (l) => state.copyWith(
        error: l,
        isLoading: false,
        qrCode: null,
      ),
      (r) => state.copyWith(
        transport: r,
        isLoading: false,
        actionState: TransportActionEnum.ready,
        qrCode: null,
      ),
    );
  }

  Future<bool> start(double latitude, double longitude, String qrCode,
      int regionId, int tariffId) async {
    state = state.copyWith(actionState: TransportActionEnum.starting);
    final dataOrFailure = await _repository.start(
        latitude, longitude, qrCode, regionId, tariffId);
    dataOrFailure.fold(
        (l) => state = state.copyWith(
              error: l,
              actionState: TransportActionEnum.pure,
            ), (r) {
      state = state.copyWith(
        actionState: TransportActionEnum.start,
      );
    });
    return dataOrFailure.fold((l) => false, (r) => true);
  }

  Future<bool> book(int id) async {
    state = state.copyWith(actionState: TransportActionEnum.booking);
    final dataOrFailure = await _repository.book(id);
    dataOrFailure.fold(
      (l) => state = state.copyWith(
        error: l,
        actionState: TransportActionEnum.pure,
      ),
      (r) {
        state = state.copyWith(
          actionState: TransportActionEnum.book,
        );
      },
    );
    return dataOrFailure.fold((l) => false, (r) => true);
  }

  void setQr(String? qrcode) {
    state = state.copyWith(qrCode: qrcode);
  }

  void setState(TransportActionEnum action) {
    state = state.copyWith(actionState: action);
  }

  void cleanError() {
    state = state.copyWith(error: null);
  }
}
