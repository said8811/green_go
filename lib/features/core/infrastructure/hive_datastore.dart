import 'package:hive_flutter/adapters.dart';

import '../domain/user_model.dart';

class HiveDataStore {
  static const userTypeId = 0;
  static const genderTypeId = 1;
  static const cartTypeId = 2;
  static const modifierTypeId = 3;
  static const mapAddressTypeId = 4;
  static const orderTypeEnumTypeId = 5;
  static const orderTypeTypeId = 6;
  static const branchTypeId = 7;
  static const favTypeId = 8;

  static const userBox = 'userBox';
  static const orderTypeBox = 'orderTypeBox';
  static const cartBox = 'cartBox';

  Future<void> init() async {
    // init Hive
    await Hive.initFlutter();
    // register adapters
    Hive.registerAdapter<UserModel>(UserModelAdapter());

    // open boxes
    await Future.wait([
      Hive.openBox<UserModel>(userBox),
      // Hive.openBox<CartModel>(cartBox),
      // Hive.openBox<OrderTypeState>(orderTypeBox),
    ]);
  }

  static Future<void> clearStorage() async {
    await Hive.deleteFromDisk();
  }
}
