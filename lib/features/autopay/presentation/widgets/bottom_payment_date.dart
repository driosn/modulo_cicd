import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/helpers/navigation_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/presentation/widgets/autopay_cancel_dialog.dart';
import 'package:resident_app/features/autopay/routes.dart';
import 'package:resident_app/features/register_site/presentation/widgets/ma_bottom_safe_spacing.dart';

class BottomPaymentDate extends StatelessWidget {
  const BottomPaymentDate({super.key, this.navigation, this.actionLabel});
  final VoidCallback? navigation;
  final String? actionLabel;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;
    return Container(
      color: colorPalette.surfaceContainerLowest,
      child: RelationalPadding(
        child: Column(
          children: [
            const RelationalSpace(),
            MAElevatedButton.secondary(
                text: localizations.cancel.toUpperCase(),
                onPressed: () {
                  const AutopayCancelDialog().showDialog(context);
                }),
            const SizedBox(
              height: 16,
            ),
            MAElevatedButton.primary(
                text: actionLabel ?? localizations.saveButton.toUpperCase(),
                onPressed: () {
                  if (navigation != null) {
                    navigation!.call();
                  } else {
                    navigateToDebitAuthNextView(
                      context,
                      AutopayRoutes.debitAutorization.name!,
                    );
                  }
                }),
            MASpacing.bottomPadding(),
            MABottomSafeSpacing(context: context)
          ],
        ),
      ),
    );
  }
}
