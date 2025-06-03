import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/features/autopay/presentation/models/payment_date_view_params.dart';
import 'package:resident_app/features/autopay/routes.dart';

final paymentDateViewParams = PaymentDateViewParams();

void navigateLastViewAutopay(
  BuildContext context,
  String routeName,
) {
  context.goNamed(
    paymentDateViewParams.getIsReviewView
        ? AutopayRoutes.autopayReview.name!
        : paymentDateViewParams.getIsAutoPayLandingView
            ? AutopayRoutes.autopayLandingView.name!
            : routeName,
  );
}

void navigateToDebitAuthNextView(
  BuildContext context,
  String routeName,
) {
  context.goNamed(
    paymentDateViewParams.getIsReviewView ||
            paymentDateViewParams.getIsAutoPayLandingView
        ? AutopayRoutes.debitAutorization.name!
        : routeName,
  );
}
