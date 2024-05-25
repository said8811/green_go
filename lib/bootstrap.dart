import 'dart:async';

// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:green_go/injection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// import 'package:stack_trace/stack_trace.dart' as stack_trace;
import 'features/core/shared/providers.dart';

@pragma('vm:entry-point')
Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  WidgetsFlutterBinding.ensureInitialized();

  final injection = Injection();
  final appInjections = await injection.setUpInjection();

  runApp(
    ProviderScope(
      overrides: [
        appConfigProvider.overrideWithValue(appInjections.appConfig),
        hiveDataStoreProvider.overrideWithValue(appInjections.dataStore),
        deviceDetailsProvider.overrideWithValue(appInjections.details),
        sharedPrefsProvider.overrideWithValue(appInjections.sharedPrefs),
        secureStorageProvider.overrideWithValue(appInjections.secureStorage),
      ],
      child: await builder(),
    ),
  );
}
