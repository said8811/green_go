import 'package:green_go/features/core/domain/reference_model.dart';
import 'package:green_go/features/core/infrastructure/reference_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ReferenceNotifier extends StateNotifier<AsyncValue<ReferenceModel>> {
  final ReferenceRepository _repository;
  ReferenceNotifier(this._repository) : super(const AsyncLoading());

  Future<void> getData(double latitude, double longitude) async {
    final dataOrFailure = await _repository.getData(latitude, longitude);
    state = dataOrFailure.fold(
      (l) => AsyncError(l, StackTrace.current),
      (r) => AsyncData(r),
    );
  }
}
