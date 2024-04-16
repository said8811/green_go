import 'package:green_go/features/profile/infrastructure/profile_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UpdateProfileNotifier extends StateNotifier<AsyncValue<bool>> {
  final ProfileRepository _repository;
  UpdateProfileNotifier(this._repository) : super(const AsyncData(false));

  Future<void> updateProfile(String name, String languageCode) async {
    final dataOrFailure = await _repository.updateProfile(name, languageCode);
    state = dataOrFailure.fold(
      (l) => AsyncError(l, StackTrace.current),
      (r) => AsyncData(r),
    );
  }
}
