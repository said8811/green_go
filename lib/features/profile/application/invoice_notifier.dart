import 'package:green_go/features/profile/infrastructure/cards_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InvoiceNotifier extends StateNotifier<AsyncValue<bool>> {
  final CardsRepository _repository;
  InvoiceNotifier(this._repository) : super(const AsyncData(false));

  Future<bool> fillBalance(int cardId, int total) async {
    state = const AsyncLoading();
    final dataOrFailure = await _repository.fillBalance(cardId, total);
    return dataOrFailure.fold((l) {
      state = AsyncError(l, StackTrace.current);
      return false;
    }, (r) {
      state = const AsyncData(true);
      return true;
    });
  }
}
