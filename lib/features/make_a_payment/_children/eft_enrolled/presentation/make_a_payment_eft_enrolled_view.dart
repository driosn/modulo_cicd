import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_divider.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/vertical_rhythm.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/presentation/views/setup_payment_view.dart';
import 'package:resident_app/features/make_a_payment/presentation/routes.dart';

class MakeAPaymentEFTEnrolledView extends StatelessWidget {
  MakeAPaymentEFTEnrolledView({super.key, required this.params});

  final SetupPaymentParams params;
  final colorPalette = locator<ColorPalette>();
  final localizations = locator<MaLocalizations>().I;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPalette.surfaceContainerLowest,
      appBar: MAAppBar(
        title: Text(localizations.makeAPayment),
        maAppBarType: MAAppBarType.blue,
      ),
      body: Column(
        children: [
          MADivider(
            height: 5,
            color: colorPalette.appBarAccent,
          ),
          Expanded(
            child: RelationalPadding(
              child: VerticalRhythm(
                topChildren: [
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    localizations.youAreEnrolledInEft,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    // key: descriptionKey,
                    localizations.makeAPaymentEftDescription,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
                bottomChildren: [
                  MAElevatedButton.secondary(
                    text: localizations.cancelPayment.toUpperCase(),
                    onPressed: () => context.pop(),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MAElevatedButton.primary(
                    text: localizations.makeAPayment.toUpperCase(),
                    onPressed: () => context.pushNamed(
                        MakeAPaymentRoutes.makeAPaymentSetupPayment.name!,
                        extra: params),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
                middleColor: colorPalette.surfaceContainerLowest,
                middleHeight: 80,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
