import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/extensions/month_extensions.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/presentation/models/payment_date.dart';
import 'package:resident_app/features/autopay/presentation/models/payment_date_view_params.dart';
import 'package:resident_app/features/autopay/presentation/widgets/review_card.dart';
import 'package:resident_app/features/autopay/presentation/widgets/review_label.dart';
import 'package:resident_app/features/autopay/presentation/widgets/review_text_button.dart';
import 'package:resident_app/features/autopay/routes.dart';

class PaymentDateCard extends StatelessWidget {
  PaymentDateCard({
    super.key,
    required this.paymentDate,
  });

  final _localizations = locator<MaLocalizations>().I;

  final OptionInfo paymentDate;

  @override
  Widget build(BuildContext context) {
    final localizations = locator<MaLocalizations>().I;
    final colorPalette = locator<ColorPalette>();
    final paymentDateViewParams = PaymentDateViewParams();
    return ReviewCard(
      cardTitle: _localizations.paymentDate,
      divider: false,
      svgIcon: 'assets/review_calendar.svg',
      iconColor: colorPalette.iconBaseTextIcon,
      children: [
        ReviewLabel(
          localizations.dayOfMonth((paymentDate.value).toOrdinal()),
        ),
        const SizedBox(
          height: 10,
        ),
        ReviewLabel(
          _localizations.youWillReceiveAPayment,
          italicStyle: true,
        ),
        ReviewTextButton(
          _localizations.changeTheDate,
          onPressed: () {
            paymentDateViewParams.update(
              isAutoPayLandingView: false,
              isReviewView: true,
            );
            context.goNamed(AutopayRoutes.paymentDate.name!);
          },
        ),
      ],
    );
  }
}
