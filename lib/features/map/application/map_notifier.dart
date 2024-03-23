import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapNotifierNotifier extends StateNotifier<List<MapObject>> {
  MapNotifierNotifier() : super([]);

  void addObjects(MapObject object) {
    List<MapObject> objects = state;
    objects.add(object);
    state = objects;
  }
}
