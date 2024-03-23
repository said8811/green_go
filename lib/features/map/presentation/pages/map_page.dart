import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/core/presentation/buttons/primary_button.dart';
import 'package:green_go/features/core/presentation/helpers/modal_helper.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/map/presentation/widgets/transport_actions_view.dart';
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
import '../widgets/action_buttons_view.dart';

const _centralPoint = Point(latitude: 41.311081, longitude: 69.240562);

class MapPage extends ConsumerStatefulWidget {
  const MapPage({super.key});

  @override
  ConsumerState<MapPage> createState() => _MapPageState();
}

class _MapPageState extends ConsumerState<MapPage> {
  late YandexMapController _controller;
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  void initState() {
    Future.microtask(() {
      final data = ref.watch(referenceNotifierProvider);
      for (var polygon in data.value!.availableCoordinates) {
        ref.read(mapNotifierProvider.notifier).addObjects(PolygonMapObject(
              mapId: MapObjectId('polygon_${UniqueKey().toString()}'),
              fillColor: Colors.white.withOpacity(0.7),
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
              onTap: (PolygonMapObject self, Point point) {},
            ));
      }
      for (var polygon in data.value!.prohibitedCoordinates) {
        ref.read(mapNotifierProvider.notifier).addObjects(PolygonMapObject(
              zIndex: 1,
              mapId: MapObjectId('polygon_${UniqueKey().toString()}'),
              fillColor: Colors.red.withOpacity(0.3),
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
      for (var cat in data.value!.categories) {
        for (var transport in cat.transports) {
          ref.read(mapNotifierProvider.notifier).addObjects(
                PlacemarkMapObject(
                  zIndex: 10,
                  opacity: 1,
                  mapId: MapObjectId('placeMark_${UniqueKey().toString()}'),
                  point: Point(
                      latitude: transport.latitude,
                      longitude: transport.longitude),
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
                    ref
                        .read(transportStateProvider.notifier)
                        .getTransport(
                            ref.watch(locationStateProvider)!.latitude,
                            ref.watch(locationStateProvider)!.longitude,
                            transport.qrCode)
                        .then(
                          (value) => showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.white,
                            builder: (_) {
                              return const TransportWidget();
                            },
                          ),
                        );
                  },
                ),
              );
        }
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(transportStateProvider, (previous, next) {
      if (next.error != null) {
        showErrorDialog(context, failure: next.error);
      }
    });
    ref.listen(ridesNotifierProvider, (previous, next) {
      if (next.rides.isNotEmpty && (previous?.rides ?? []).isEmpty) {
        showModalBottomSheet(
          context: context,
          isDismissible: false,
          backgroundColor: Colors.white,
          builder: (_) {
            return const TransportActionsView();
          },
        );
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
            mapObjects: ref.watch(mapNotifierProvider),
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
                context.go(AppRoute.qr.routePathWithSlash);
              },
              borderColor: Colors.transparent,
              leading: CommonSvgPicture(Assets.icons.scanner),
              childStyle: context.textTheme.labelSmall?.copyWith(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: 120,
            child: ActionChip.elevated(
              padding: const EdgeInsets.all(12),
              onPressed: () {},
              shape: const CircleBorder(side: BorderSide(color: Colors.white)),
              label: Center(
                  child: CommonSvgPicture(
                Assets.icons.filter,
              )),
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
  }
}
