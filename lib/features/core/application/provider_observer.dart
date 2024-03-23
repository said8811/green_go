import 'dart:developer';

import 'package:green_go/features/core/shared/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppProviderObserver extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    if (kIsProd) return;
    log('[${provider.name ?? provider.runtimeType}]  value: $newValue');
  }
}
