import 'package:green_go/features/profile/domain/card_model.dart';
import 'package:green_go/features/profile/infrastructure/cards_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CardsNotifier extends StateNotifier<AsyncValue<List<CardModel>>> {
  final CardsRepository _repository;
  CardsNotifier(this._repository) : super(const AsyncLoading()) {
    getCards();
  }

  Future<void> getCards() async {
    state = const AsyncLoading();
    final dataOrFailure = await _repository.getCards();
    state = dataOrFailure.fold(
      (l) => const AsyncData([]),
      (r) => AsyncData(r),
    );
  }

  Future<bool> fillBalance(int cardId, int total) async {
    state = const AsyncLoading();
    final dataOrFailure = await _repository.fillBalance(cardId, total);
    return dataOrFailure.fold((l) {
      state = AsyncError(l, StackTrace.current);
      return false;
    }, (r) {
      return true;
    });
  }

  Future<void> removeCard(int id) async {
    state = const AsyncLoading();
    final dataOrFailure = await _repository.removeCard(id);
    dataOrFailure.fold(
      (l) {
        state = const AsyncData([]);
      },
      (r) {
        getCards();
      },
    );
  }
}
