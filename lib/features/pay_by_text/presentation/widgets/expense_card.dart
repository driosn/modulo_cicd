import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/pay_by_text/presentation/widgets/review_card.dart';
import 'package:resident_app/features/pay_by_text/presentation/widgets/review_label.dart';

class ExpenseCard extends StatelessWidget {
  ExpenseCard({
    super.key,
    required this.expenseToBePaid,
  });

  final _localizations = locator<MaLocalizations>().I;

  final String expenseToBePaid;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    return ReviewCard(
      cardTitle: _localizations.expenseToBePaid,
      divider: true,
      icon: Icons.monetization_on_outlined,
      iconColor: colorPalette.iconBaseTextIcon,
      children: [
        ReviewLabel(expenseToBePaid),
        const SizedBox(
          height: 8,
        ),
        ReviewLabel(
          _localizations.amountDueMayVaryEachMonth,
          italicStyle: true,
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
