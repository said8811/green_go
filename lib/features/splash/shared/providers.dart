import 'package:green_go/features/core/application/reference_notifier.dart';
import 'package:green_go/features/core/infrastructure/reference_repository.dart';
import 'package:green_go/features/core/shared/providers.dart';
import 'package:green_go/services/location/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final referenceRepositoryProvider = Provider<ReferenceRepository>((ref) {
  return ReferenceRepository(
      ref.watch(dioProvider), ref.watch(locationProvider));
});

final referenceNotifierProvider =
    StateNotifierProvider<ReferenceNotifier, ReferenceState>(
        (ref) => ReferenceNotifier(ref.watch(referenceRepositoryProvider)));
