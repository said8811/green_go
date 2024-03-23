enum AppRoute {
  home,
  map,
  splash,
  qr,
  activeOrders,
  error,
  loading,
  notification,
  profile,
  settings,
  history,
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
