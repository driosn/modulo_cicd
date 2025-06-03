import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/application/bloc/navigation_drawer/navigation_drawer_bloc.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/terms_of_use/presentation/views/terms_of_use_view.dart';

class TermsOfUseRoutes implements RoutesGroup {
  static final termsOfUse = GoRoute(
    name: 'terms-of-use',
    path: 'terms-of-use',
    builder: (BuildContext context, state) {
          locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.myAccountTermsOfUse());
      return const TermsOfUseView();
    },
  );

  @override
  List<RouteBase> get routes => [
        termsOfUse,
      ];
}
