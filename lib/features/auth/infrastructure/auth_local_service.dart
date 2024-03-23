// import 'package:flutter/foundation.dart';
import 'package:green_go/features/core/shared/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/domain/user_model.dart';
import '../../core/infrastructure/hive_datastore.dart';
import 'package:hive/hive.dart';

class AuthLocalService {
  final SharedPreferences _pref;
  AuthLocalService(this._pref);

  final box = Hive.box<UserModel>(HiveDataStore.userBox);

  UserModel? setUser() {
    final user = box.get('user');
    // print(user?.id);
    return user;
  }

  Future<void> addUser({
    required UserModel user,
  }) async {
    await box.put('user', user);
  }

  Future<void> removeUser() async {
    await box.delete('user');
    _pref.setString(kTokenKey, "");
  }
}
