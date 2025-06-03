import 'package:flutter/material.dart';

class GlobalNavigatorObserver extends RouteObserver<ModalRoute<Object?>>
    implements NavigatorObserver {
  @override
  GlobalNavigatorObserver();
  // required CrashlyticsHelper crashlyticsHelper,

  //  : _crashlyticsHelper = crashlyticsHelper;

  // final CrashlyticsHelper _crashlyticsHelper;

  @override
  void didPush(Route route, Route? previousRoute) {
    String previousRouteName =
        previousRoute == null ? "null" : previousRoute.settings.name ?? "null";
    String? routeName = route.settings.name;

    // _crashlyticsHelper.setKeys(
    // routeName: routeName,
    // previousRouteName: previousRouteName,
    // );
  }
}
