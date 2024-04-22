import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_notifier.freezed.dart';

@freezed
class MapNotifierState with _$MapNotifierState {
  factory MapNotifierState({
    required List<MapObject> mainObjects,
    required List<MapObject> availableObjects,
  }) = _MapNotifierState;

  factory MapNotifierState.initial() => MapNotifierState(
        mainObjects: [],
        availableObjects: [],
      );
}

class MapNotifierNotifier extends StateNotifier<MapNotifierState> {
  MapNotifierNotifier() : super(MapNotifierState.initial());

  void addMainObjects(MapObject object) {
    List<MapObject> objects = List.from(state.mainObjects);
    objects.add(object);
    state = state.copyWith(mainObjects: objects);
  }

  void addAvailableObjects(MapObject object) {
    List<MapObject> objects = List.from(state.availableObjects);
    objects.add(object);
    state = state.copyWith(
      availableObjects: objects,
    );
  }

  void clearObjects() {
    state = state.copyWith(
        mainObjects: state.mainObjects.where((element) {
      return element.mapId.value == "polygon_earth";
    }).toList());
  }

  void updateOneObject(String value, MapObject object) {
    List<MapObject> objects = List.from(state.mainObjects
        .where((element) => element.mapId.value != value)
        .toList());
    objects.add(object);
    state = state.copyWith(mainObjects: objects);
  }
}
