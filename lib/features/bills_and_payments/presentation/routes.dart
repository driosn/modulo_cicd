import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/application/bloc/navigation_drawer/navigation_drawer_bloc.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/bills_and_payments/domain/entities/payments.dart';
import 'package:resident_app/features/bills_and_payments/presentation/views/bill_pdf_view.dart';
import 'package:resident_app/features/bills_and_payments/presentation/views/bills_and_payments_views.dart';
import 'package:resident_app/features/bills_and_payments/presentation/views/payments_view.dart';

class BillsAndPaymentsRoutes implements RoutesGroup {
  static final billsAndPayments = GoRoute(
    name: 'bills_and_payments',
    path: 'bills-and-payments',
    builder: (BuildContext context, __) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsBillingSettings());
      return const BillsAndPaymentsView();
    },
    routes: [
      billPdf,
    ],
  );
  static final payments = GoRoute(
    name: 'payments',
    path: 'payments',
    builder: (BuildContext context, __) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsBillingSettings());
      return const PaymentsView();
    },
  );
  static final billPdf = GoRoute(
    name: 'bill_pdf',
    path: 'bill-pdf',
    //TODO: improve logic for pdf name
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsBillsPayments());
      return const BillPdfView();
    },
  );
  static final paymentDescription = GoRoute(
    name: 'payment_description',
    path: 'payment-description',
    builder: (BuildContext context, state) {
      final payment = state.extra as Payment;

      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.paymentsBillsPayments());
      return PaymentDescriptionView(
        payment: payment,
      );
    },
  );
  @override
  List<RouteBase> get routes => [
        billsAndPayments,
        paymentDescription,
        payments,
      ];
}
