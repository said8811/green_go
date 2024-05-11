import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/auth/shared/providers.dart';
import 'package:green_go/features/core/application/helper_functions.dart';
import 'package:green_go/features/core/presentation/widgets/common_svg_picture.dart';

import 'package:green_go/features/map/shared/providers.dart';
import 'package:green_go/features/splash/shared/providers.dart';
import 'package:green_go/gen/assets.gen.dart';
import 'package:green_go/services/location/shared/providers.dart';
import 'package:green_go/services/router/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class SplashPage extends HookConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> getCurrentPosition() async {
      await ref.read(locationStateProvider.notifier).getCurrentPosition();
    }

    useEffectWithScheduler(action: () async {
      await getCurrentPosition().then((value) => ref.read(referenceNotifierProvider.notifier).getData());
    });

    ref.listen(referenceNotifierProvider, (previous, next) async {
      if (next.error != null) {
        ref.read(authNotifierProvider.notifier).signOut();
      }
      if (previous?.data == null && next.data != null) {
        ref.read(mapNotifierProvider.notifier).addMainObjects(
              PolygonMapObject(
                mapId: const MapObjectId('polygon_earth'),
                fillColor: Colors.red.withOpacity(0.18),
                strokeColor: Colors.red,
                isGeodesic: true,
                isVisible: true,
                strokeWidth: 1,
                polygon: const Polygon(
                    outerRing: LinearRing(points: [
                      Point(latitude: 85, longitude: -180),
                      Point(latitude: 85, longitude: 180),
                      Point(latitude: -85, longitude: 180),
                      Point(latitude: -85, longitude: -180),
                    ]),
                    innerRings: []),
                onTap: (PolygonMapObject self, Point point) {},
              ),
            );
        await Future.delayed(const Duration(seconds: 1)).then((value) => context.go(AppRoute.map.routePathWithSlash));
      }
    });

    return Scaffold(
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Assets.images.logo.image(
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: SafeArea(
            minimum: const EdgeInsets.symmetric(vertical: 40),
            child: CommonSvgPicture(
              Assets.icons.splashText,
              size: 35,
            )));
  }
}
