import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/bills_and_payments/application/bloc/billings_bloc.dart';
import 'package:resident_app/features/bills_and_payments/domain/entities/billings.dart';
import 'package:resident_app/features/bills_and_payments/presentation/routes.dart';

class BillTile extends StatelessWidget {
  BillTile({
    super.key,
    required this.billing,
  });

  final Billing billing;
  final colorPalette = locator<ColorPalette>();
  final localizations = locator<MaLocalizations>().I;
  final billingsBloc = locator<BillingsBloc>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocListener<BillingsBloc, BillingsState>(
      bloc: billingsBloc,
      listener: (context, state) {
        if (state.billingPDFStatus == BillingsStatus.success) {
          billingsBloc.add(const BillingsEvent.restart());
          context.pushReplacementNamed(BillsAndPaymentsRoutes.billPdf.name!);
        }
      },
      child: GestureDetector(
        onTap: () async {
          billingsBloc.add(BillingsEvent.getBillingPDF(
            billing.id,
            "${localizations.nMonth(billing.invoiceMonth.toString())} "
            " ${billing.invoiceYear}",
          ));
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(
                "${localizations.nMonth(billing.invoiceMonth.toString())} "
                " ${billing.invoiceYear}",
                style: theme.textTheme.bodyMedium,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 0,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right_outlined,
                size: 32,
                color: colorPalette.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
