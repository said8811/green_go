import 'package:green_go/features/core/domain/failure.dart';
import 'package:green_go/features/map/domain/books_model.dart';
import 'package:green_go/features/map/domain/single_transport_model.dart';
import 'package:green_go/features/map/domain/tarif_model.dart';
import 'package:green_go/features/map/infrastructure/transport_repository.dart';
import 'package:green_go/services/location/infrastructure/location_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'transport_notifier.freezed.dart';

enum TransportActionEnum {
  pure,
  starting,
  start,
  booking,
  book,
  cancelingBook,
  ready,
  turnOn,
}

@freezed
class TransportState with _$TransportState {
  factory TransportState({
    required SingleTransportModel? transport,
    BookModel? book,
    required bool isLoading,
    Failure? error,
    String? qrCode,
    required TransportActionEnum actionState,
  }) = _TransportState;
  factory TransportState.initial() => TransportState(
        transport: null,
        isLoading: false,
        actionState: TransportActionEnum.pure,
      );
  factory TransportState.loading() => TransportState(
        transport: null,
        isLoading: true,
        actionState: TransportActionEnum.pure,
        error: null,
      );
}

class TransportNotifier extends StateNotifier<TransportState> {
  final TransportRepository _repository;
  final LocationService _service;
  TransportNotifier(this._repository, this._service) : super(TransportState.initial());

  Future<bool> getTransport(double latitude, double longitude, String qrCode) async {
    if (state.isLoading) {
      return false;
    }
    state = TransportState.loading();
    final dataOrFailure = await _repository.getTransport(latitude, longitude, qrCode);
    state = dataOrFailure.fold(
      (l) => state.copyWith(
        error: l,
        isLoading: false,
        qrCode: null,
      ),
      (r) => state.copyWith(
        transport: r,
        isLoading: false,
        error: null,
        actionState: TransportActionEnum.ready,
        qrCode: null,
      ),
    );
    return dataOrFailure.fold((l) => false, (r) => true);
  }

  Future<bool> start(double latitude, double longitude, String qrCode, int regionId) async {
    state = state.copyWith(actionState: TransportActionEnum.starting);
    final dataOrFailure = await _repository.start(latitude, longitude, qrCode, regionId, state.selectedTarif!.id);
    dataOrFailure.fold(
        (l) => state = state.copyWith(
              error: l,
              actionState: TransportActionEnum.pure,
            ), (r) async {
      await _service.startLocationSending(r);
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
          book: r,
        );
      },
    );
    return dataOrFailure.fold((l) => false, (r) => true);
  }

  Future<bool> cancelBook(int id) async {
    state = state.copyWith(actionState: TransportActionEnum.cancelingBook);
    final dataOrFailure = await _repository.cancelBook(id);
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

  void setTarif(TarifModel id) {
    state = state.copyWith(selectedTarif: id);
  }

  void setState(TransportActionEnum action) {
    state = state.copyWith(actionState: action);
  }

  void cleanError() {
    state = state.copyWith(error: null);
  }
}
