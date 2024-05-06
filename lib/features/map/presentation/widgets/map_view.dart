import 'package:flutter/material.dart';
import 'package:green_go/services/location/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../../../../gen/assets.gen.dart';
import '../../shared/providers.dart';

const _centralPoint = Point(latitude: 41.311081, longitude: 69.240562);

class MapView extends ConsumerStatefulWidget {
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
  ConsumerState<MapView> createState() => _MapViewState();
}

class _MapViewState extends ConsumerState<MapView> {
  @override
  Widget build(BuildContext context) {
    final latLong = ref.watch(locationStateProvider);
    return YandexMap(
      onUserLocationAdded: (UserLocationView view) async {
        return view.copyWith(
          accuracyCircle: CircleMapObject(
              isVisible: false,
              mapId: const MapObjectId("accuracy_circle"),
              circle: Circle(
                  center: Point(
                      latitude: latLong?.latitude ?? _centralPoint.latitude,
                      longitude: latLong?.longitude ?? _centralPoint.longitude),
                  radius: 0)),
          arrow: view.arrow.copyWith(
            zIndex: 20,
            icon: PlacemarkIcon.single(
              PlacemarkIconStyle(
                  image: BitmapDescriptor.fromAssetImage(
                      Assets.images.locationMark.path),
                  scale: 0.7),
            ),
            opacity: 1,
          ),
          pin: view.pin.copyWith(
            zIndex: 21,
            icon: PlacemarkIcon.single(
              PlacemarkIconStyle(
                  image: BitmapDescriptor.fromAssetImage(
                      Assets.images.locationMark.path),
                  scale: 0.7),
            ),
            opacity: 1,
          ),
        );
      },
      onMapCreated: (YandexMapController controller) async {
        await controller.toggleUserLayer(visible: true);
        widget.onMapCreated(controller);
        await controller.moveCamera(
          CameraUpdate.newCameraPosition(CameraPosition(
              target: Point(
                latitude: latLong?.latitude ?? _centralPoint.latitude,
                longitude: latLong?.longitude ?? _centralPoint.longitude,
              ),
              zoom: 16)),
        );
      },
      mapObjects: widget.zoom < 11
          ? ref.watch(mapNotifierProvider).availableObjects
          : ref.watch(mapNotifierProvider).mainObjects,
      onCameraPositionChanged: (cameraPosition, reason, finished) {
        if (finished) {
          widget.onPositionChanged(cameraPosition);
        }
      },
    );
  }
}
