import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/application/bloc/navigation_drawer/navigation_drawer_bloc.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/make_a_payment/_children/add_payment_account/presentation/views/make_a_payment_account_added_view.dart';
import 'package:resident_app/features/make_a_payment/_children/add_payment_account/presentation/views/make_a_payment_add_payment_account_view.dart';
import 'package:resident_app/features/make_a_payment/_children/eft_enrolled/presentation/make_a_payment_eft_enrolled_view.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/presentation/views/setup_payment_view.dart';
import 'package:resident_app/features/make_a_payment/presentation/views/make_a_payment_views.dart';

class MakeAPaymentRoutes implements RoutesGroup {
  static final makeAPayment = GoRoute(
    name: 'make-a-payment',
    path: 'make-a-payment',
    builder: (BuildContext context, __) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsMakePayment());
      return const MakeAPaymentView();
    },
    routes: const [],
  );

  static final makeAPaymentSetupPayment = GoRoute(
    name: 'make-a-payment-setup-payment',
    path: 'make-a-payment-setup-payment',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsMakePayment());

      final params = state.extra as SetupPaymentParams;

      return SetupPaymentView(
        params: params,
      );
    },
    routes: const [],
  );

  static final makeAPaymentAddPaymentAccount = GoRoute(
    name: 'make-a-payment-add-payment-account',
    path: 'make-a-payment-add-payment-account',
    builder: (BuildContext context, __) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsMakePayment());
      return const MakeAPaymentAddPaymentAccountView();
    },
    routes: const [],
  );

  static final makeAPaymentAccountAdded = GoRoute(
    name: 'make-a-payment-add-account-added',
    path: 'make-a-payment-add-account-added',
    builder: (BuildContext context, GoRouterState state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsMakePayment());
      return MakeAPaymentAccountAddedView();
    },
    routes: const [],
  );

  static final makeAPaymentConfirmation = GoRoute(
    name: 'make-a-payment-success',
    path: 'make-a-payment-success',
    builder: (BuildContext context, __) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsMakePayment());
      return MakeAPaymentSuccessView();
    },
    routes: const [],
  );

  static final makeAPaymentEFTEnrolled = GoRoute(
    name: 'make-a-payment-eft-enrolled',
    path: 'make-a-payment-eft-enrolled',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsMakePayment());
      final params = state.extra as SetupPaymentParams;
      return MakeAPaymentEFTEnrolledView(
        params: params,
      );
    },
    routes: const [],
  );

  @override
  List<RouteBase> get routes => [
        makeAPayment,
        makeAPaymentSetupPayment,
        makeAPaymentAddPaymentAccount,
        makeAPaymentAccountAdded,
        makeAPaymentConfirmation,
        makeAPaymentEFTEnrolled,
      ];
}
