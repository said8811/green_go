import 'package:green_go/features/profile/infrastructure/profile_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ImageUpdateNotifier extends StateNotifier<bool> {
  final ProfileRepository _repository;
  ImageUpdateNotifier(this._repository) : super(false);

  Future<void> setProfileImage(String image) async {
    final dataOrFailure = await _repository.updateProfileImage(image);
    state = dataOrFailure.fold((l) => false, (r) => true);
  }
}
