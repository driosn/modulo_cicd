import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_snackbar.dart';
import 'package:resident_app/core/presentation/widgets/vertical_rhythm.dart';
import 'package:resident_app/core/shared/helpers/navigation_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/presentation/widgets/bottom_payment_date.dart';
import 'package:resident_app/features/autopay/presentation/widgets/leading_set_up_is_completed.dart';
import 'package:resident_app/features/autopay/presentation/widgets/top_payment_date.dart';
import 'package:resident_app/features/autopay/routes.dart';

class PaymentDateView extends StatelessWidget {
  PaymentDateView({super.key});

  final autoPayBloc = locator<AutoPayBloc>();
  final AppLocalizations localizations = locator<MaLocalizations>().I;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorPalette = locator<ColorPalette>();
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        autoPayBloc.add(const AutoPayEvent.setAllFieldsAreValidate());
        navigateLastViewAutopay(
          context,
          AutopayRoutes.autopayWidthdrawalAmount.name!,
        );
      },
      child: Scaffold(
        backgroundColor: colorPalette.surfaceContainerLowest,
        appBar: MAAppBar(
          iconTheme: IconThemeData(
            color: colorPalette.appBarTextIcon,
          ),
          maAppBarType: MAAppBarType.blue,
          bottom: const MABottomAppBar(),
          title: Text(
            autoPayBloc.state.setUpIsCompleted
                ? localizations.settings
                : localizations.setupAutoPay,
            style: textTheme.titleSmall!.copyWith(
              color: colorPalette.appBarTextIcon,
            ),
          ),
          leadingWidth: autoPayBloc.state.setUpIsCompleted ? 120 : null,
          leading: autoPayBloc.state.setUpIsCompleted
              ? LeadingSetUpIsCompleted(autoPayBloc: autoPayBloc)
              : null,
          actions: [
            if (autoPayBloc.state.setUpIsCompleted)
              GestureDetector(
                onTap: () {
                  context.goNamed(AutopayRoutes.autopayLandingView.name!);
                  ScaffoldMessenger.of(context).showSnackBar(
                    MASnackBar.success(
                        message: localizations.newPaymentDateSaved),
                  );
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text(
                      localizations.saveButton,
                      style: textTheme.labelLarge!.copyWith(
                        color: colorPalette.appBarTextIcon,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
        body: autoPayBloc.state.setUpIsCompleted
            ? ListView(children: [
                TopPaymentDate(
                  title: localizations.changePaymentDate,
                  autoPayBloc: autoPayBloc,
                )
              ])
            : VerticalRhythm(
                topChildren: [
                  TopPaymentDate(
                    title: localizations.selectPaymentDate,
                    autoPayBloc: autoPayBloc,
                  ),
                ],
                bottomChildren: const [
                  BottomPaymentDate(),
                ],
                middleColor: colorPalette.surfaceContainerLowest,
                middleHeight: 80,
              ),
      ),
    );
  }
}
