import 'dart:ui';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../features/core/shared/providers.dart';

import '../application/locale_notifier.dart';

final localeNotifierProvider = StateNotifierProvider<LocaleNotifier, Locale>(
  (ref) => LocaleNotifier(
    ref.watch(sharedPrefsProvider),
  ),
);
