import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/extensions/string_extensions.dart';
import 'package:resident_app/core/shared/helpers/string_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/bills_and_payments/domain/entities/payments.dart';
import 'package:resident_app/features/bills_and_payments/presentation/widgets/payment_description_header.dart';
import 'package:resident_app/features/bills_and_payments/presentation/widgets/payment_information_block.dart';

class PaymentDescriptionView extends StatelessWidget {
  const PaymentDescriptionView({
    super.key,
    required this.payment,
  });

  final Payment payment;

  @override
  Widget build(BuildContext context) {
    final localizations = locator<MaLocalizations>().I;
    final colorPalette = locator<ColorPalette>();
    return Scaffold(
      backgroundColor: colorPalette.surfaceContainerLowest,
      appBar: MAAppBar(
        iconTheme: IconThemeData(
          color: colorPalette.appBarTextIcon,
          size: 24,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        maAppBarType: MAAppBarType.blue,
        title: Text(
          "${payment.paymentDate.toFormattedDate().toPascalCase()} ${localizations.payment}",
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 17,
                color: colorPalette.appBarTextIcon,
              ),
        ),
        bottom: const MABottomAppBar(),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              children: [
                MASpacing.xxl(),
                PaymentDescriptionHeader(
                  payment: payment,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              children: [
                MASpacing.l(),
                PaymentInformationBlock(
                  title: localizations.description,
                  content: payment.payToTypeDescription,
                  isInProgress: payment.isInProgress,
                ),
                MASpacing.l(),
                PaymentInformationBlock(
                  title: localizations.paymentMethod,
                  content: payment.paymentTypeDescription,
                ),
                MASpacing.l(),
                PaymentInformationBlock(
                  title: localizations.transactionN,
                  content: payment.transactionNumber.toString(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
