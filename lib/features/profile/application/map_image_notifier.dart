import 'dart:typed_data';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../infrastructure/map_repository.dart';

class MapImageNotifier extends StateNotifier<AsyncValue<Uint8List>> {
  final MapImageRepostiory _repostiory;
  MapImageNotifier(this._repostiory) : super(const AsyncLoading());

  Future<void> getImage(List<String> cords) async {
    final dataOrFailure = await _repostiory.getImage(cords);
    state = dataOrFailure.fold(
      (l) => AsyncError(l, StackTrace.current),
      (r) => AsyncData(r),
    );
  }
}
