import 'dart:typed_data';

import 'package:green_go/features/core/shared/providers.dart';
import 'package:green_go/features/profile/application/add_card_notifier.dart';
import 'package:green_go/features/profile/application/cards_notifier.dart';
import 'package:green_go/features/profile/application/invoice_notifier.dart';
import 'package:green_go/features/profile/application/map_image_notifier.dart';
import 'package:green_go/features/profile/application/profile_notifier.dart';
import 'package:green_go/features/profile/application/qa_notifier.dart';
import 'package:green_go/features/profile/application/rides_history_notifier.dart';
import 'package:green_go/features/profile/application/selected_card_notifier.dart';
import 'package:green_go/features/profile/application/update_profile_notifier.dart';
import 'package:green_go/features/profile/domain/card_model.dart';
import 'package:green_go/features/profile/domain/profile_model.dart';
import 'package:green_go/features/profile/domain/qa_category_model.dart';
import 'package:green_go/features/profile/infrastructure/cards_repository.dart';
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
    StateNotifierProvider.autoDispose<MapImageNotifier, AsyncValue<Uint8List>>(
  (ref) {
    return MapImageNotifier(ref.watch(mapRepoProvider));
  },
);

final cardsRepoProvider = Provider<CardsRepository>((ref) {
  return CardsRepository(ref.watch(dioProvider));
});

final cardsNotifierProvider = StateNotifierProvider.autoDispose<CardsNotifier,
    AsyncValue<List<CardModel>>>((ref) {
  return CardsNotifier(ref.watch(cardsRepoProvider));
});

final invoiceNotifier =
    StateNotifierProvider.autoDispose<InvoiceNotifier, AsyncValue<bool>>(
        (ref) => InvoiceNotifier(ref.watch(cardsRepoProvider)));

final addCardProvider =
    StateNotifierProvider.autoDispose<AddCardNotifier, AddCardState>((ref) {
  return AddCardNotifier(ref.watch(cardsRepoProvider));
});

final qaNotifierProvider = StateNotifierProvider.autoDispose<QaNotifier,
    AsyncValue<List<QACategoryModel>>>((ref) {
  return QaNotifier(ref.watch(profileRepositoryProvider));
});

final updateProfileProvider =
    StateNotifierProvider<UpdateProfileNotifier, AsyncValue<bool>>((ref) {
  return UpdateProfileNotifier(ref.watch(profileRepositoryProvider));
});

final selectedCardProvider =
    StateNotifierProvider.autoDispose<SelectedCardNotifier, int?>((ref) {
  return SelectedCardNotifier(ref.watch(sharedPrefsProvider));
});
