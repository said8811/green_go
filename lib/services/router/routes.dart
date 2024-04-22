import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/map/domain/ride_model.dart';
import 'package:green_go/features/map/presentation/pages/finish_page.dart';
import 'package:green_go/features/map/presentation/pages/map_page.dart';
import 'package:green_go/features/profile/presentation/pages/about_page.dart';
import 'package:green_go/features/profile/presentation/pages/add_card_view.dart';
import 'package:green_go/features/profile/presentation/pages/balance_page.dart';
import 'package:green_go/features/profile/presentation/pages/history_page.dart';
import 'package:green_go/features/profile/presentation/pages/qa_page.dart';
import 'package:green_go/features/profile/presentation/pages/settings_page.dart';
import 'package:green_go/features/profile/presentation/pages/single_ride_page.dart';
import 'package:green_go/features/qr/presentation/qr_camera_page.dart';
import 'package:green_go/features/splash/splash_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features/auth/presentation/screens/sign_in_page.dart';
import '../../features/auth/shared/providers.dart';
import '../../features/profile/presentation/pages/profile_page.dart';
import 'app_router.dart';
import 'constants.dart';

final appRoutesListProvider = Provider<List<RouteBase>>(
  (ref) {
    return [
      GoRoute(
        path: '/',
        name: AppRoute.splash.name,
        pageBuilder: (_, __) => const NoTransitionPage(child: SplashPage()),
        redirect: (context, state) => ref.watch(authRedirectLogicProvider),
      ),
      GoRoute(
          path: '/map',
          name: AppRoute.map.name,
          pageBuilder: (_, state) => const NoTransitionPage(child: MapPage()),
          redirect: (_, __) => ref.watch(authRedirectLogicProvider)),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: '/profile',
        name: AppRoute.profile.name,
        pageBuilder: (_, __) => const CupertinoPage(child: ProfilePage()),
        redirect: (_, __) => ref.watch(authRedirectLogicProvider),
      ),
      GoRoute(
        path: '/balance',
        name: AppRoute.balance.name,
        pageBuilder: (_, __) => const NoTransitionPage(child: BalancePage()),
        redirect: (_, __) => ref.watch(authRedirectLogicProvider),
      ),
      GoRoute(
        path: '/history',
        name: AppRoute.history.name,
        pageBuilder: (_, __) => const NoTransitionPage(child: HistoryPage()),
        redirect: (_, __) => ref.watch(authRedirectLogicProvider),
      ),
      GoRoute(
        path: AppRoute.addCardView.routePathWithSlash,
        name: AppRoute.addCardView.name,
        pageBuilder: (_, __) => const NoTransitionPage(child: AddCardView()),
        redirect: (_, __) => ref.watch(authRedirectLogicProvider),
      ),
      GoRoute(
        path: AppRoute.qr.routePathWithSlash,
        name: AppRoute.qr.name,
        pageBuilder: (_, __) => const NoTransitionPage(child: QrCameraPage()),
        redirect: (_, __) => ref.watch(authRedirectLogicProvider),
      ),
      GoRoute(
        path: AppRoute.about.routePathWithSlash,
        name: AppRoute.about.name,
        pageBuilder: (_, __) => const NoTransitionPage(child: AboutPage()),
        redirect: (_, __) => ref.watch(authRedirectLogicProvider),
      ),
      GoRoute(
        path: AppRoute.qApage.routePathWithSlash,
        name: AppRoute.qApage.name,
        pageBuilder: (_, __) => const NoTransitionPage(child: QAPage()),
        redirect: (_, __) => ref.watch(authRedirectLogicProvider),
      ),
      GoRoute(
        path: AppRoute.settings.routePathWithSlash,
        name: AppRoute.settings.name,
        pageBuilder: (_, __) => const NoTransitionPage(child: SettingsPage()),
        redirect: (_, __) => ref.watch(authRedirectLogicProvider),
      ),
      GoRoute(
        path: AppRoute.finishPage.routePathWithSlash,
        name: AppRoute.finishPage.name,
        pageBuilder: (_, __) => const NoTransitionPage(child: FinishPage()),
        redirect: (_, __) => ref.watch(authRedirectLogicProvider),
      ),
      GoRoute(
        path: AppRoute.singleRideHistory.routePathWithSlash,
        name: AppRoute.singleRideHistory.name,
        pageBuilder: (_, state) => NoTransitionPage(
            child: SingleRideView(
          ride: state.extra as RideModel,
        )),
        redirect: (_, __) => ref.watch(authRedirectLogicProvider),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: AppRoute.auth.routePathWithSlash,
        name: AppRoute.auth.name,
        builder: (_, __) => const SignInPage(),
      ),
    ];
  },
);

final authRedirectLogicProvider = Provider<String?>(
  (ref) {
    return ref.watch(authNotifierProvider).maybeWhen(
          orElse: () => AppRoute.auth.routePathWithSlash,
          initial: () => AppRoute.loading.routePathWithSlash,
          authenticated: (_) => null,
        );
  },
);

// final authAndRefRedirectLogicProvider = Provider((ref) {
//   if (ref.watch(authRedirectLogicProvider) == null) {
//     return ref.watch(referenceRedirectLogicProvider);
//   }
//   return ref.watch(authRedirectLogicProvider);
// });
