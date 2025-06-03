import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/application/bloc/navigation_drawer/navigation_drawer_bloc.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

import 'presentation/views/register_site_views.dart';

class RegisterSiteRoutes implements RoutesGroup {
  static final registerSite = GoRoute(
    name: 'register_site',
    path: 'register-site',
    builder: (BuildContext context, __) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.myAccountRegisterSite());
      return const RegisterSiteView();
    },
    routes: [
      confirmSite,
      thankYou,
    ],
  );

  static final confirmSite = GoRoute(
    name: 'confirm_site',
    path: 'confirm-site',
    builder: (_, __) => const ConfirmSiteView(),
    routes: const [],
  );

  static final thankYou = GoRoute(
    name: 'thank_you',
    path: 'thank-you',
    builder: (_, __) => ThankYouView(),
    routes: const [],
  );

  @override
  List<RouteBase> get routes => [
        registerSite,
      ];
}
