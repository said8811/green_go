import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/core/domain/coordinate_model.dart';
import 'package:green_go/features/core/presentation/buttons/primary_button.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/map/presentation/widgets/book_timer_widget.dart';
import 'package:green_go/features/map/presentation/widgets/map_view.dart';
import 'package:green_go/features/map/presentation/widgets/ride_timer_widget.dart';
import 'package:green_go/features/map/shared/providers.dart';
import 'package:green_go/features/splash/shared/providers.dart';
import 'package:green_go/gen/assets.gen.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:green_go/services/location/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../../../../services/router/constants.dart';
import '../../../core/presentation/helpers/modal_helper.dart';
import '../../../core/presentation/widgets/common_svg_picture.dart';
import '../widgets/action_buttons_view.dart';

class MapPage extends ConsumerStatefulWidget {
  const MapPage({super.key});

  @override
  ConsumerState<MapPage> createState() => _MapPageState();
}

class _MapPageState extends ConsumerState<MapPage> {
  late YandexMapController _controller;
  Timer? _updateTimer;
  double zoom = 16;

  @override
  void initState() {
    Future.microtask(() {
      _updateMapObjects();
      _updateTimer = Timer.periodic(const Duration(minutes: 1), (timer) {
        _updateMapObjects();
      });
    });
    super.initState();
  }

  Future<void> _updateMapObjects() async {
    await ref.read(referenceNotifierProvider.notifier).getData().then((value) {
      ref.read(mapNotifierProvider.notifier).clearObjects();
      final data = ref.watch(referenceNotifierProvider);
      for (var polygon in data.data!.availableCoordinates) {
        ref.read(mapNotifierProvider.notifier).addMainObjects(getPolygon(
              polygon,
              fillColor: Colors.white.withOpacity(0.6),
              strokeColor: Colors.red,
            ));
        ref.read(mapNotifierProvider.notifier).addAvailableObjects(getPolygon(
              polygon,
              fillColor: Colors.green.withOpacity(0.3),
              strokeColor: Colors.green,
            ));
      }
      for (var polygon in data.data!.prohibitedCoordinates) {
        ref.read(mapNotifierProvider.notifier).addMainObjects(getPolygon(
              polygon,
              fillColor: Colors.red.withOpacity(0.2),
              strokeColor: Colors.red,
            ));
      }
      for (var cat in data.data!.categories) {
        for (var transport in cat.transports) {
          MapObject placeMark = PlacemarkMapObject(
            opacity: 1,
            mapId: MapObjectId('placeMark_${transport.id}'),
            point: Point(latitude: transport.latitude, longitude: transport.longitude),
            icon: PlacemarkIcon.single(
              PlacemarkIconStyle(
                image: BitmapDescriptor.fromAssetImage(
                  cat.type == "bicycle" ? Assets.images.bike.path : Assets.images.scooter.path,
                ),
                scale: 0.7,
              ),
            ),
            onTap: (mapObject, point) {
              var updatedPlacemark = mapObject.copyWith(
                icon: PlacemarkIcon.single(
                  PlacemarkIconStyle(
                    image: BitmapDescriptor.fromAssetImage(Assets.images.bicyle.path),
                    scale: 0.8,
                  ),
                ),
              );
              var intialPlaceMark = mapObject.copyWith(
                icon: PlacemarkIcon.single(
                  PlacemarkIconStyle(
                    image: BitmapDescriptor.fromAssetImage(Assets.images.bike.path),
                    scale: 0.7,
                  ),
                ),
              );
              ref.read(mapNotifierProvider.notifier).updateOneObject(mapObject.mapId.value, updatedPlacemark);
              ref.read(transportStateProvider.notifier).getTransport(ref.watch(locationStateProvider)!.latitude,
                  ref.watch(locationStateProvider)!.longitude, transport.qrCode);

              openTransportView(context, () {
                Future.microtask(() {
                  ref.read(mapNotifierProvider.notifier).initialPlaceMark(mapObject.mapId.value, intialPlaceMark);
                });
              }, transport.qrCode);
            },
          );
          ref.read(mapNotifierProvider.notifier).addMainObjects(placeMark);
        }
      }
    });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final rides = ref.watch(ridesNotifierProvider);
    ref.listen(ridesNotifierProvider, (previous, next) {
      if (next.rides.isNotEmpty && (previous?.rides ?? []).isEmpty) {
        ref.read(locationProvider).startLocationSending(next.rides[0].id.toString());
        openActionsView(context);
      }
      if (next.books.isNotEmpty && (previous?.books ?? []).isEmpty) {
        openBooksView(context);
      }
    });
    ref.listen(transportStateProvider, (previous, next) {
      if (next.error != null && previous?.error == null) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Center(child: Text(next.error.toString())),
          behavior: SnackBarBehavior.floating,
          duration: const Duration(seconds: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height - (Platform.isAndroid ? 100 : 150), right: 50, left: 50),
        ));
      }
    });

    return Scaffold(
      body: Stack(
        children: [
          MapView(
            onMapCreated: (controller) {
              _controller = controller;
            },
            onPositionChanged: (position) {
              setState(() {
                zoom = position.zoom;
              });
            },
            zoom: zoom,
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
          if (rides.rides.isNotEmpty) const RideTimerWidget(),
          if (rides.books.isNotEmpty) const BookTimerWidget(),
          Positioned(
            top: 60,
            left: 20,
            child: ActionChip.elevated(
                onPressed: () {
                  context.push(AppRoute.profile.routePathWithSlash);
                },
                padding: const EdgeInsets.all(12),
                shape: const CircleBorder(side: BorderSide(color: Colors.white)),
                label: CommonSvgPicture(Assets.icons.user)),
          ),
          Positioned(
            bottom: 80,
            left: MediaQuery.of(context).size.width * 0.25,
            right: MediaQuery.of(context).size.width * 0.25,
            child: PrimaryButton(
              title: context.l10n.scanIt,
              onPress: () {
                context.push(AppRoute.qr.routePathWithSlash).then((qr) async {
                  if (qr != null) {
                    ref
                        .read(transportStateProvider.notifier)
                        .getTransport(ref.watch(locationStateProvider)!.latitude,
                            ref.watch(locationStateProvider)!.longitude, qr.toString())
                        .then((value) {
                      if (value) {
                        openTransportView(context, () {}, qr.toString());
                      }
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
    return ref.watch(locationStateProvider);
  }

  void setZoom(double zoomLevel) async {
    final CameraPosition point = await _controller.getCameraPosition();

    await _controller.moveCamera(
      CameraUpdate.newCameraPosition(CameraPosition(target: point.target, zoom: point.zoom + zoomLevel)),
    );
    zoom = point.zoom + zoomLevel;
    setState(() {});
  }

  PolygonMapObject getPolygon(
    List<CordinateModel> polygons, {
    required Color fillColor,
    required Color strokeColor,
    VoidCallback? onTap,
  }) {
    return PolygonMapObject(
      mapId: MapObjectId('polygon_${UniqueKey().toString()}'),
      fillColor: fillColor,
      strokeColor: strokeColor,
      polygon: Polygon(
        outerRing: LinearRing(
          points: polygons.map((e) => Point(latitude: e.latitude, longitude: e.longitude)).toList(),
        ),
        innerRings: const [],
      ),
      onTap: (mapObject, point) {
        onTap?.call();
        return;
      },
    );
  }

  @override
  void dispose() {
    _updateTimer?.cancel();
    _controller.dispose();
    super.dispose();
  }
}
