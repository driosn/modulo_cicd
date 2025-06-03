import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/application/bloc/navigation_drawer/navigation_drawer_bloc.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/privacy_policy/presentation/views/privacy_policy_view.dart';

class PrivacyPolicyRoutes implements RoutesGroup {
  static final privacyPolicy = GoRoute(
    name: 'privacy-policy',
    path: 'privacy-policy',
    builder: (BuildContext context, state) {
          locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.myAccountPrivacyPolicy());
      return const PrivacyPolicyView();
    },
  );

  @override
  List<RouteBase> get routes => [
        privacyPolicy,
      ];
}
