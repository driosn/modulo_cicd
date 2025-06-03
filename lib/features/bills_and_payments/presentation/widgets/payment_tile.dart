import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/features/bills_and_payments/domain/payments_domain.dart';
import 'package:resident_app/features/bills_and_payments/presentation/routes.dart';
import 'package:resident_app/features/bills_and_payments/presentation/widgets/high_payment_tile.dart';
import 'package:resident_app/features/bills_and_payments/presentation/widgets/low_scale_payment_tile.dart';

class PaymentTile extends StatelessWidget {
  const PaymentTile(
      {super.key, required this.scaleFactor, required this.payment});

  final double scaleFactor;
  final Payment payment;

  @override
  Widget build(BuildContext context) {
    payment.isInProgress;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          context.pushNamed(
            BillsAndPaymentsRoutes.paymentDescription.name!,
            extra: payment,
          );
        },
        child: scaleFactor >= 1.2
            ? HighScalePaymentTile(
                payment: payment,
              )
            : LowScalePaymentTile(
                payment: payment,
              ),
      ),
    );
  }
}
