import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features/core/shared/constants.dart';
import 'routes.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final homeNavigatorKey = GlobalKey<NavigatorState>();
final checkoutNavigatorKey = GlobalKey<NavigatorState>();

final appRouterProvider = Provider(
  (ref) {
    return GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: !kIsProd,
      observers: [NavigatorObserver()],
      navigatorKey: rootNavigatorKey,
      routes: ref.watch(appRoutesListProvider),
      refreshListenable: ref.watch(_listenableProvider),
    );
  },
);

class AppRouterRefreshStream extends ChangeNotifier {
  AppRouterRefreshStream() {
    // _ref.listen<AuthState>(authNotifierProvider, (prev, next) {
    //   next.maybeWhen(
    //     authenticated: (_) {
    //       if (prev == const AuthState.unAuthenticated() ||
    //           prev == const AuthState.initial()) {
    //         notifyListeners();
    //       }
    //       return null;
    //     },
    //     unAuthenticated: () {
    //       notifyListeners();
    //     },
    //     orElse: () => null,
    //   );
    // });
  }
}

final _listenableProvider = Provider<Listenable?>(
  (ref) => AppRouterRefreshStream(),
);

final _routeInformationProvider =
    ChangeNotifierProvider<GoRouteInformationProvider>((ref) {
  final router = ref.watch(appRouterProvider);
  return router.routeInformationProvider;
});

final currentRouteProvider = Provider((ref) {
  return ref.watch(_routeInformationProvider).value.uri.path;
});
