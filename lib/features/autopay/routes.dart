import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/application/bloc/navigation_drawer/navigation_drawer_bloc.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/presentation/views/autopay_eft_enrolled_view.dart';
import 'package:resident_app/features/autopay/presentation/views/autopay_payment_account_card_view.dart';
import 'package:resident_app/features/autopay/presentation/views/payment_account_update_autopay_view.dart';
import 'package:resident_app/features/autopay/presentation/views/update_payment_date_view.dart';
import 'package:resident_app/features/autopay/presentation/views/update_withdrawal_amount_view.dart';
import 'package:resident_app/features/payment_account/presentation/views/payment_account_deleted_view.dart';

import 'presentation/views/autopay_views.dart';

class AutopayRoutes implements RoutesGroup {
  static final autopaySetUp = GoRoute(
      name: 'autopay_set_up',
      path: 'autopay-set-up',
      builder: (BuildContext context, state) {
        return const AutoPaySetUpView();
      },
      routes: [
        autopayLandingView,
        autopayReview,
        autopayScheduledConfirmation,
        autopayWidthdrawalAmount,
        debitAutorization,
        paymentDate,
        paymentAccountUpdateAutopay,
        deletedPaymentAccount,
        autopayPaymentAccountCardView,
        autopayUpdateWidthdrawalAmount,
        autopayUpdatePaymentDate,
      ]);

  static final autopayScheduledConfirmation = GoRoute(
    name: 'autopay_scheduled_confirmation',
    path: 'autopay-scheduled-confirmation',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsAutoPay());
      return const AutoPayScheduledConfirmationView();
    },
  );
  static final setUpCompleted = GoRoute(
      name: 'set_up_completed',
      path: 'set-up-completed',
      builder: (BuildContext context, state) {
        locator<NavigationDrawerBloc>()
            .add(const NavigationDrawerEvent.paymentsAutoPay());
        return const SetUpCompleted();
      },
      routes: [
        autopayLandingView,
        autopayReview,
        autopayScheduledConfirmation,
        autopayWidthdrawalAmount,
        debitAutorization,
        paymentDate,
        deletedPaymentAccount,
        autopayPaymentAccountCardView,
        autopayUpdateWidthdrawalAmount,
        autopayUpdatePaymentDate,
      ]);
  static final paymentDate = GoRoute(
    path: 'payment-date',
    name: 'payment_date',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsAutoPay());
      return PaymentDateView();
    },
  );
  static final autopayWidthdrawalAmount = GoRoute(
    name: 'withdrawal_amount',
    path: 'withdrawal-amount',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsAutoPay());
      return WithdrawalAmountView();
    },
  );
  static final autopayReview = GoRoute(
    name: 'autopay_review',
    path: 'autopay-review',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsAutoPay());
      return const AutopayReviewView();
    },
  );
  static final autopayLandingView = GoRoute(
    path: 'autopay-pay-landing-view',
    name: 'autopay_pay_landing_view',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsAutoPay());
      return AutoPayLandingView();
    },
  );
  static final debitAutorization = GoRoute(
    path: 'debit-authorization',
    name: 'debit_authorization',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsAutoPay());
      return const DebitAuthorizationView();
    },
  );

  static final paymentAccountUpdateAutopay = GoRoute(
    path: 'payment-account-update-autopay',
    name: 'payment_account_update_autopay',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsPaymentAccount());
      return PaymentAccountUpdateAutopayView();
    },
  );
  static final deletedPaymentAccount = GoRoute(
    path: 'deleted-payment-account',
    name: 'deleted-payment-account',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsAutoPay());
      return PaymentAccountDeletedView();
    },
  );
  static final autopayPaymentAccountCardView = GoRoute(
    path: 'autopay-payment-account-card-view',
    name: 'autopay_payment_account_card_view',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsAutoPay());
      return const AutopayPaymentAccountCardView();
    },
  );

  static final autopayEftEnrolled = GoRoute(
    path: 'autopay-eft-enrolled',
    name: 'autopay_eft_enrolled',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsAutoPay());
      return const AutoPayEFTEnrolledView();
    },
  );

  static final autopayUpdateWidthdrawalAmount = GoRoute(
    name: 'update-withdrawal-amount',
    path: 'update_withdrawal-amount',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsAutoPay());
      return UpdateWithdrawalAmountView();
    },
  );

  static final autopayUpdatePaymentDate = GoRoute(
    path: 'update-payment-date',
    name: 'update_payment_date',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsAutoPay());
      return UpdatePaymentDateView();
    },
  );

  @override
  List<RouteBase> get routes => [
        autopaySetUp,
        autopayEftEnrolled,
      ];
}
