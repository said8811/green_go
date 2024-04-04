import 'dart:typed_data';

import 'package:green_go/features/core/shared/providers.dart';
import 'package:green_go/features/profile/application/map_image_notifier.dart';
import 'package:green_go/features/profile/application/profile_notifier.dart';
import 'package:green_go/features/profile/application/rides_history_notifier.dart';
import 'package:green_go/features/profile/domain/profile_model.dart';
import 'package:green_go/features/profile/infrastructure/map_repository.dart';
import 'package:green_go/features/profile/infrastructure/profile_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final profileRepositoryProvider = Provider<ProfileRepository>((ref) {
  return ProfileRepository(ref.watch(dioProvider));
});

final profileNotifierProvider = StateNotifierProvider.autoDispose<
    ProfileNotifier, AsyncValue<ProfileModel>>((ref) {
  return ProfileNotifier(ref.watch(profileRepositoryProvider));
});

final ridesHistoryNotifierProvider =
    StateNotifierProvider.autoDispose<HistoryNotifier, RidesHistoryState>(
        (ref) {
  return HistoryNotifier(ref.watch(profileRepositoryProvider));
});

final mapRepoProvider = Provider<MapImageRepostiory>((ref) {
  return MapImageRepostiory(ref.watch(dioProvider));
});

final mapImageProvider =
    StateNotifierProvider<MapImageNotifier, AsyncValue<Uint8List>>(
  (ref) {
    return MapImageNotifier(ref.watch(mapRepoProvider));
  },
);
