import 'package:flutter/material.dart';

class AppNavigationRailModel {
  String title;
  int index;
  Icon icon;

  AppNavigationRailModel({
    required this.title,
    required this.index,
    required this.icon,
  });

  static List<AppNavigationRailModel> tiles = [
    AppNavigationRailModel(
      title: 'Главная',
      index: 0,
      icon: const Icon(
        Icons.home_rounded,
        color: Colors.white,
      ),
    ),
    AppNavigationRailModel(
      title: 'Заказы',
      index: 1,
      icon: const Icon(
        Icons.shopping_bag_outlined,
        color: Colors.white,
      ),
    ),
    AppNavigationRailModel(
      title: 'Создать заказ',
      index: 2,
      icon: const Icon(
        Icons.shopping_cart_checkout,
        color: Colors.white,
      ),
    ),
    AppNavigationRailModel(
      title: 'История',
      index: 3,
      icon: const Icon(
        Icons.history,
        color: Colors.white,
      ),
    ),
    AppNavigationRailModel(
      title: 'Меню',
      index: 4,
      icon: const Icon(
        Icons.menu,
        color: Colors.white,
      ),
    ),
  ];
}
