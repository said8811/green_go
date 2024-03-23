import 'package:green_go/features/profile/domain/profile_model.dart';
import 'package:green_go/features/profile/infrastructure/profile_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileNotifier extends StateNotifier<AsyncValue<ProfileModel>> {
  final ProfileRepository _repository;
  ProfileNotifier(this._repository) : super(const AsyncLoading()) {
    getProfile();
  }

  Future<void> getProfile() async {
    state = const AsyncLoading();
    final dataOrFailue = await _repository.getProfile();
    state = dataOrFailue.fold(
      (l) => AsyncError(l, StackTrace.current),
      (r) => AsyncData(r),
    );
  }
}
