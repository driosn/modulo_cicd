import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/constants/illustrations.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_circular_progress_indicator.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/helpers/svg_color_mapped.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/bills_and_payments/application/bloc/payments_bloc.dart';
import 'package:resident_app/features/bills_and_payments/domain/payments_domain.dart';
import 'package:resident_app/features/bills_and_payments/presentation/widgets/payment_tile.dart';

class PaymentsTabView extends StatelessWidget {
  PaymentsTabView({
    super.key,
    required this.scaleFactor,
    required this.payments,
  });

  final double scaleFactor;
  final List<Payment> payments;

  final PaymentsBloc paymentsBloc = locator<PaymentsBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentsBloc, PaymentsState>(
      bloc: paymentsBloc,
      builder: (context, state) {
        return state.paymentsStatus == PaymentsStatus.loading
            ? SizedBox(
                height: (MediaQuery.sizeOf(context).height / 2) + 100,
                child: const MACircularProgressIndicator(),
              )
            : state.paymentsStatus == PaymentsStatus.success
                ? state.paymentHistory.payments.isNotEmpty
                    ? _PaymentListWidget(
                        scaleFactor: scaleFactor,
                        payments: state.paymentHistory.payments,
                      )
                    : _NoPaymentsWidget()
                : const SizedBox.shrink();
      },
    );
  }
}

class _NoPaymentsWidget extends StatelessWidget {
  _NoPaymentsWidget();

  final AppLocalizations localizations = locator<MaLocalizations>().I;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final colorPalette = locator<ColorPalette>();
    return Column(
      children: [
        MASpacing.s(),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            localizations.noPayments,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: locator<ColorPalette>().textBase,
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SvgPicture(
            width: width,
            SvgAssetLoader(
              Illustrations.noPaymentDue(context),
              colorMapper: SvgColorMapper(
                fromColor: colorPlaceHolder,
                toColor: colorPalette.buttonPrimaryBg,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _PaymentListWidget extends StatelessWidget {
  _PaymentListWidget({
    required this.scaleFactor,
    required this.payments,
  });

  final double scaleFactor;
  final List<Payment> payments;

  final colorPalette = locator<ColorPalette>();
  final AppLocalizations localizations = locator<MaLocalizations>().I;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        scaleFactor >= 1.5
            ? const SizedBox.shrink()
            : Row(
                children: [
                  Expanded(
                    child: Text(
                      localizations.amount,
                      style: textTheme.labelSmall,
                    ),
                  ),
                  MASpacing.xxs(axis: Axis.horizontal),
                  MASpacing.s(axis: Axis.horizontal),
                  Expanded(
                    child: Text(
                      localizations.description,
                      style: textTheme.labelSmall,
                    ),
                  ),
                  MASpacing.xl(axis: Axis.horizontal),
                  MASpacing.xl(axis: Axis.horizontal),
                ],
              ),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: payments.length,
          itemBuilder: (context, index) {
            return PaymentTile(
              scaleFactor: scaleFactor,
              payment: payments[index],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              color: colorPalette.surfaceContainer,
              thickness: 1,
            );
          },
        ),
      ],
    );
  }
}
