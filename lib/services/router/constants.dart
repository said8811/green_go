enum AppRoute {
  home,
  map,
  splash,
  qr,
  qApage,
  activeOrders,
  error,
  loading,
  notification,
  finishPage,
  profile,
  settings,
  singleRideHistory,
  history,
  addCardView,
  report,
  about,
  orders,
  balance,
  auth;

  const AppRoute();
}

extension AppRuteX on AppRoute {
  String get routePathWithSlash => '/$name';
  String get routePathNoSlash => name;
}
