import 'package:green_go/features/profile/domain/qa_category_model.dart';
import 'package:green_go/features/profile/infrastructure/profile_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class QaNotifier extends StateNotifier<AsyncValue<List<QACategoryModel>>> {
  final ProfileRepository _repository;
  QaNotifier(this._repository) : super(const AsyncLoading()) {
    getAnswers();
  }

  Future<void> getAnswers() async {
    state = const AsyncLoading();
    final dataOrFailure = await _repository.getAnswers();
    state = dataOrFailure.fold(
      (l) => AsyncError(l, StackTrace.current),
      (r) => AsyncData(r),
    );
  }
}
