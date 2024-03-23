import 'package:flutter/material.dart';
import 'package:green_go/features/core/shared/providers.dart';
import 'package:green_go/injection.dart';
import 'package:green_go/services/localization/shared/providers.dart';
import 'package:green_go/services/router/app_router.dart';
import 'package:green_go/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'services/localization/l10n/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final injection = Injection();
  final appInjection = await injection.setUpInjection();
  runApp(ProviderScope(overrides: [
    sharedPrefsProvider.overrideWithValue(appInjection.sharedPrefs),
    deviceDetailsProvider.overrideWithValue(appInjection.details),
    appConfigProvider.overrideWithValue(appInjection.appConfig),
    hiveDataStoreProvider.overrideWithValue(appInjection.dataStore),
  ], child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Green Go',
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      locale: ref.watch(localeNotifierProvider),
      theme: ref.watch(appThemeProvider).dark,
      routerConfig: ref.watch(appRouterProvider),
    );
  }
}
