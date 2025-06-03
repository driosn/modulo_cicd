import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/application/bloc/navigation_drawer/navigation_drawer_bloc.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/cashpay/presentation/view/cashpay_landing_view.dart';

class CashPayRoutes implements RoutesGroup {
  static final landing = GoRoute(
    name: 'landing',
    path: 'landing',
    builder: (BuildContext context, state) {
          locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsCashPay());
      return const CashPayLandingView();
    },
  );

  @override
  List<RouteBase> get routes => [
        landing,
      ];
}
