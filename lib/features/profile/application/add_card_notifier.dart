import 'package:green_go/features/core/domain/failure.dart';
import 'package:green_go/features/profile/domain/add_card_model.dart';
import 'package:green_go/features/profile/infrastructure/cards_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_card_notifier.freezed.dart';

@freezed
class AddCardState with _$AddCardState {
  factory AddCardState({
    required bool isLoading,
    required AddCardModel data,
    Failure? error,
    required bool isVerified,
  }) = _AddCardState;

  factory AddCardState.initial() => AddCardState(
      isLoading: false, data: AddCardModel.initial(), isVerified: false);
}

class AddCardNotifier extends StateNotifier<AddCardState> {
  final CardsRepository _repository;
  AddCardNotifier(this._repository) : super(AddCardState.initial());

  Future<void> addCard(String number, String expire) async {
    state = state.copyWith(isLoading: true);
    final dataOrFailure = await _repository.addCard(number, expire);
    state = dataOrFailure.fold(
      (l) => state.copyWith(error: l, isLoading: false),
      (r) => state.copyWith(data: r, isLoading: false),
    );
  }

  Future<void> verifyCard(String code) async {
    final dataOrFailure =
        await _repository.verifyCard(state.data.cardId!, code);
    state = dataOrFailure.fold((l) => state.copyWith(error: l),
        (r) => state.copyWith(isVerified: true));
  }
}
