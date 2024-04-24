import 'package:flutter/material.dart';
import 'package:green_go/services/location/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../../shared/providers.dart';

const _centralPoint = Point(latitude: 41.311081, longitude: 69.240562);

class MapView extends ConsumerWidget {
  final Function(YandexMapController) onMapCreated;
  final Function(CameraPosition) onPositionChanged;
  final double zoom;
  const MapView({
    super.key,
    required this.onMapCreated,
    required this.onPositionChanged,
    required this.zoom,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final latLong = ref.watch(locationStateProvider);
    return YandexMap(
      onMapCreated: (YandexMapController controller) async {
        onMapCreated(controller);
        await controller.moveCamera(
          CameraUpdate.newCameraPosition(CameraPosition(
              target: Point(
                latitude: latLong?.latitude ?? _centralPoint.latitude,
                longitude: latLong?.longitude ?? _centralPoint.longitude,
              ),
              zoom: 16)),
        );
      },
      mapObjects: zoom < 11
          ? ref.watch(mapNotifierProvider).availableObjects
          : ref.watch(mapNotifierProvider).mainObjects,
      onCameraPositionChanged: (cameraPosition, reason, finished) {
        if (finished) {
          onPositionChanged(cameraPosition);
        }
      },
    );
  }
}
