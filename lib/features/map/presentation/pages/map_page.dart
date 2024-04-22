import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/core/presentation/buttons/primary_button.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/map/presentation/widgets/transport_widget.dart';
import 'package:green_go/features/map/shared/providers.dart';
import 'package:green_go/features/splash/shared/providers.dart';
import 'package:green_go/gen/assets.gen.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:green_go/services/location/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../../../../services/router/constants.dart';
import '../../../core/presentation/widgets/common_svg_picture.dart';
import '../../application/rides_notifier.dart';
import '../widgets/action_buttons_view.dart';
import '../widgets/transport_actions_view.dart';

const _centralPoint = Point(latitude: 41.311081, longitude: 69.240562);

class MapPage extends ConsumerStatefulWidget {
  const MapPage({super.key});

  @override
  ConsumerState<MapPage> createState() => _MapPageState();
}

class _MapPageState extends ConsumerState<MapPage> {
  late YandexMapController _controller;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  Timer? _updateTimer;
  double zoom = 16;
  int? selectedBikeId;

  @override
  void initState() {
    Future.microtask(() {
      _updateMapObjects();

      _updateTimer = Timer.periodic(const Duration(minutes: 2), (timer) {
        final latLong = ref.watch(locationStateProvider);
        ref
            .read(referenceNotifierProvider.notifier)
            .getData(latLong?.latitude, latLong?.longitude);
        ref.read(mapNotifierProvider.notifier).clearObjects();
        _updateMapObjects();
      });
    });
    super.initState();
  }

  Future<void> _updateMapObjects() async {
    final data = ref.watch(referenceNotifierProvider);
    for (var polygon in data.data!.availableCoordinates) {
      ref.read(mapNotifierProvider.notifier).addMainObjects(PolygonMapObject(
            mapId: MapObjectId('polygon_${UniqueKey().toString()}'),
            fillColor: Colors.white.withOpacity(0.6),
            strokeColor: Colors.red,
            isGeodesic: true,
            isVisible: true,
            strokeWidth: 1,
            polygon: Polygon(
                outerRing: LinearRing(
                  points: polygon
                      .map((e) =>
                          Point(latitude: e.latitude, longitude: e.longitude))
                      .toList(),
                ),
                innerRings: const []),
          ));
      ref
          .read(mapNotifierProvider.notifier)
          .addAvailableObjects(PolygonMapObject(
            mapId: MapObjectId('polygon_${UniqueKey().toString()}'),
            fillColor: Colors.green.withOpacity(0.3),
            strokeColor: Colors.green,
            isGeodesic: true,
            isVisible: true,
            strokeWidth: 1,
            polygon: Polygon(
                outerRing: LinearRing(
                  points: polygon
                      .map((e) =>
                          Point(latitude: e.latitude, longitude: e.longitude))
                      .toList(),
                ),
                innerRings: const []),
          ));
    }
    for (var polygon in data.data!.prohibitedCoordinates) {
      ref.read(mapNotifierProvider.notifier).addMainObjects(PolygonMapObject(
            zIndex: 1,
            mapId: MapObjectId('polygon_${UniqueKey().toString()}'),
            fillColor: Colors.red.withOpacity(0.2),
            strokeColor: Colors.red,
            polygon: Polygon(
              outerRing: LinearRing(
                points: polygon
                    .map((e) =>
                        Point(latitude: e.latitude, longitude: e.longitude))
                    .toList(),
              ),
              innerRings: const [],
            ),
            onTap: (PolygonMapObject self, Point point) {},
          ));
    }
    for (var cat in data.data!.categories) {
      for (var transport in cat.transports) {
        MapObject placeMark = PlacemarkMapObject(
          zIndex: 10,
          opacity: 1,
          mapId: MapObjectId('placeMark_${transport.id}'),
          point: Point(
              latitude: transport.latitude, longitude: transport.longitude),
          icon: PlacemarkIcon.single(
            PlacemarkIconStyle(
              image: BitmapDescriptor.fromAssetImage(
                cat.type == "bicycle"
                    ? Assets.images.bike.path
                    : Assets.images.scooter.path,
              ),
              scale: 1.7,
            ),
          ),
          onTap: (mapObject, point) {
            var updatedPlacemark = mapObject.copyWith(
              icon: PlacemarkIcon.single(
                PlacemarkIconStyle(
                  image: BitmapDescriptor.fromAssetImage(
                      Assets.images.selectedBike.path),
                  scale: 1.7,
                ),
              ),
            );
            ref
                .read(mapNotifierProvider.notifier)
                .updateOneObject(mapObject.mapId.value, updatedPlacemark);
            if (!ref.watch(transportStateProvider).isLoading) {
              ref
                  .read(transportStateProvider.notifier)
                  .getTransport(
                      ref.watch(locationStateProvider)!.latitude,
                      ref.watch(locationStateProvider)!.longitude,
                      transport.qrCode)
                  .then((value) => showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.white,
                        builder: (_) {
                          return const TransportWidget();
                        },
                      ));
            }
          },
        );
        ref.read(mapNotifierProvider.notifier).addMainObjects(placeMark);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final latlong = ref.watch(locationStateProvider);
    final rides = ref.watch(ridesNotifierProvider);
    ref.listen(ridesNotifierProvider, (previous, next) {
      if (next.rides.isNotEmpty && (previous?.rides ?? []).isEmpty) {
        openActionsView();
      }
      if (previous?.actionState != RideAction.stop &&
          next.actionState == RideAction.stop) {
        context.pop();
      }
    });
    return Scaffold(
      key: _key,
      body: Stack(
        children: [
          YandexMap(
            onMapCreated: (YandexMapController controller) async {
              _controller = controller;
              await controller.moveCamera(
                CameraUpdate.newCameraPosition(
                    const CameraPosition(target: _centralPoint, zoom: 16)),
              );
            },
            mapObjects: zoom < 11
                ? ref.watch(mapNotifierProvider).availableObjects
                : ref.watch(mapNotifierProvider).mainObjects,
            onCameraPositionChanged: (cameraPosition, reason, finished) {
              if (finished) {
                setState(() {
                  zoom = cameraPosition.zoom;
                });
              }
            },
          ),
          Positioned(
            top: 1,
            bottom: 1,
            right: 10,
            child: ActinoButtonsView(
              onZoomIn: () {
                setZoom(0.5);
              },
              onZoomOut: () {
                setZoom(-0.5);
              },
              onDirection: () async {
                await _getCurrentPosition().then((value) {
                  if (value == null) return;
                  _controller.moveCamera(
                    CameraUpdate.newCameraPosition(
                      CameraPosition(
                        target: Point(
                          latitude: value.latitude,
                          longitude: value.longitude,
                        ),
                      ),
                    ),
                  );
                });
              },
            ),
          ),
          if (rides.rides.isNotEmpty)
            Positioned(
                left: 100,
                top: 60,
                child: InkWell(
                  onTap: () {
                    openActionsView();
                  },
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1,
                              offset: const Offset(4, 4),
                              color: context.colorScheme.grey)
                        ]),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 11, horizontal: 8),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 114, 114, 114),
                              borderRadius: BorderRadius.circular(20)),
                          child: CommonSvgPicture(Assets.icons.selectedBike),
                        ),
                        const Gap(10),
                        Text(getTime(DateTime.now()
                            .difference(DateTime.parse(rides.rides[0].startAt))
                            .inSeconds))
                      ],
                    ),
                  ),
                )),
          Positioned(
            top: 60,
            left: 20,
            child: ActionChip.elevated(
                onPressed: () {
                  context.push(AppRoute.profile.routePathWithSlash);
                },
                padding: const EdgeInsets.all(12),
                shape:
                    const CircleBorder(side: BorderSide(color: Colors.white)),
                label: CommonSvgPicture(Assets.icons.user)),
          ),
          Positioned(
            bottom: 80,
            left: MediaQuery.of(context).size.width * 0.25,
            right: MediaQuery.of(context).size.width * 0.25,
            child: PrimaryButton(
              title: context.l10n.scanIt,
              onPress: () {
                context
                    .push(AppRoute.qr.routePathWithSlash)
                    .then((value) async {
                  if (value != null) {
                    await ref
                        .read(transportStateProvider.notifier)
                        .getTransport(
                          latlong?.latitude ?? 0,
                          latlong?.longitude ?? 0,
                          value.toString(),
                        )
                        .then((value) {
                      showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.white,
                        builder: (_) {
                          return const TransportWidget();
                        },
                      );
                    });
                  }
                });
              },
              borderColor: Colors.transparent,
              leading: CommonSvgPicture(Assets.icons.scanner),
              childStyle: context.textTheme.labelSmall?.copyWith(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<Position?> _getCurrentPosition() async {
    final permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) return null;
    return Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }

  void setZoom(double zoomLevel) async {
    final CameraPosition point = await _controller.getCameraPosition();

    await _controller.moveCamera(
      CameraUpdate.newCameraPosition(
          CameraPosition(target: point.target, zoom: point.zoom + zoomLevel)),
    );
    setState(() {});
  }

  @override
  void dispose() {
    _updateTimer?.cancel();
    super.dispose();
  }

  String getTime(int time) {
    return "${time ~/ 60 < 10 ? "0${time ~/ 60}" : time ~/ 60}:${time % 60 < 10 ? "0${time % 60}" : time % 60}";
  }

  void openActionsView() {
    showModalBottomSheet(
      context: context,
      enableDrag: false,
      backgroundColor: Colors.white,
      builder: (_) {
        return const TransportActionsView();
      },
    );
  }
}
