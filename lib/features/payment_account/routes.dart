import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/application/bloc/navigation_drawer/navigation_drawer_bloc.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/payment_account/presentation/views/payment_account_creation_autopay_view.dart';
import 'package:resident_app/features/payment_account/presentation/views/payment_account_deleted_view.dart';
import 'package:resident_app/features/payment_account/presentation/views/payment_account_update_view.dart';
import 'package:resident_app/features/payment_account/presentation/views/payment_account_views.dart';

class PaymentAccountRoutes implements RoutesGroup {
  static final paymentAccountSetUp = GoRoute(
      name: 'payment_account_set_up',
      path: 'payment-account-set-up',
      builder: (BuildContext context, GoRouterState state) {
        locator<NavigationDrawerBloc>()
            .add(const NavigationDrawerEvent.paymentsPaymentAccount());
        return const PaymentAccountSetUpView();
      },
      routes: [
        paymentAccountSettings,
        paymentAccountCreation,
        paymentAccountCreationAutopay,
        paymentAccountUpdate,
        paymentAccountDeleted,
      ]);

  static final paymentAccountSettings = GoRoute(
    path: 'payment-account-settings',
    name: 'payment_account_settings',
    builder: (BuildContext context, GoRouterState state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsPaymentAccount());
      return const PaymentAccountSettingsView();
    },
  );

  static final paymentAccountCreation = GoRoute(
    path: 'payment-account',
    name: 'payment_account',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsPaymentAccount());
      return const PaymentAccountCreationView();
    },
  );

  static final paymentAccountCreationAutopay = GoRoute(
    path: 'payment-account-autopay',
    name: 'payment_account_autopay',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsPaymentAccount());
      return const PaymentAccountCreationAutopayView();
    },
  );

  static final paymentAccountUpdate = GoRoute(
    path: 'payment-account-update',
    name: 'payment_account-update',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsPaymentAccount());
      return PaymentAccountUpdateView();
    },
  );

  static final paymentAccountDeleted = GoRoute(
    path: 'payment-account-deleted',
    name: 'payment_account-deleted',
    builder: (BuildContext context, state) {
      return PaymentAccountDeletedView();
    },
  );

  @override
  List<RouteBase> get routes => [
        paymentAccountSetUp,
      ];
}
