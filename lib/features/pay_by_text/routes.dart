import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/application/bloc/navigation_drawer/navigation_drawer_bloc.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/pay_by_text/presentation/views/pay_by_text_mobile_phone_number_view.dart';
import 'package:resident_app/features/pay_by_text/presentation/views/pay_by_text_payment_account_card_view.dart';

import 'presentation/views/pay_by_text_views.dart';

class PayByTextRoutes implements RoutesGroup {
  static final payByTextSetUp = GoRoute(
    name: 'pay_by_text_set_up',
    path: 'pay-by-text-set-up',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsPayByText());
      return const PayByTextSetUpView();
    },
    routes: [
      payByTextLandingView,
      payByTextReview,
      payByTextScheduledConfirmation,
      payByTextMobilePhoneNumber,
      debitAutorization,
      payByTextNewPaymentAccount,
      payByTextPaymentAccountCardView,
    ],
  );

  static final payByTextScheduledConfirmation = GoRoute(
    name: 'pay_by_text_scheduled_confirmation',
    path: 'pay-by-text-scheduled-confirmation',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsPayByText());
      return PayByTextScheduledConfirmationView();
    },
  );

  static final payByTextNewPaymentAccount = GoRoute(
    path: 'pay_by_text_new_payment_account',
    name: 'pay-by-text-new-payment-account',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.payments());
      return const PayByTextNewPaymentAccountView();
    },
  );

  static final payByTextPaymentAccountCardView = GoRoute(
    path: 'pay_by_text_payment_account_card',
    name: 'pay-by-text-payment-account-card',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.payments());
      return const PayByTextPaymentAccountCardView();
    },
  );

  static final payByTextMobilePhoneNumber = GoRoute(
    name: 'mobile_phone_number',
    path: 'mobile-phone-number',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsPayByText());
      return const PayByTextMobilePhoneNumberView();
    },
  );

  static final payByTextReview = GoRoute(
    name: 'pay_by_text_review',
    path: 'pay-by-text-review',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsPayByText());
      return const PayByTextReviewView();
    },
  );

  static final payByTextLandingView = GoRoute(
    path: 'pay-by-text-pay-landing-view',
    name: 'pay_by_text_pay_landing_view',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsPayByText());
      return const PayByTextLandingView();
    },
  );

  static final debitAutorization = GoRoute(
    path: 'pay-by-text-debit-authorization',
    name: 'pay_by_text_debit_authorization',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsPayByText());
      return const PayByTextDebitAuthorizationView();
    },
  );

  @override
  List<RouteBase> get routes => [
        payByTextSetUp,
      ];
}
