import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationNotifier extends StateNotifier<bool> {
  final SharedPreferences _pref;
  NotificationNotifier(this._pref) : super(false) {
    getNotify();
  }

  final isNotify = 'isNotify';

  void getNotify() {
    state = _pref.getBool(isNotify) ?? false;
  }

  Future<void> setNotitfy(bool notification) async {
    await _pref.setBool(isNotify, notification);
    getNotify();
  }
}
