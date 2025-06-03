import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
import 'package:resident_app/features/autopay/application/bloc/autopay_settings/autopay_settings_bloc.dart';
import 'package:resident_app/features/autopay/presentation/widgets/bottom_payment_date.dart';
import 'package:resident_app/features/autopay/presentation/widgets/leading_set_up_is_completed.dart';
import 'package:resident_app/features/autopay/presentation/widgets/top_payment_date.dart';
import 'package:resident_app/features/autopay/routes.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';

class UpdatePaymentDateView extends StatefulWidget {
  const UpdatePaymentDateView({super.key});

  @override
  State<UpdatePaymentDateView> createState() => _UpdatePaymentDateViewState();
}

class _UpdatePaymentDateViewState extends State<UpdatePaymentDateView> {
  late final AutoPayBloc autoPayBloc;
  late final AppLocalizations localizations;
  late final AutoPaySettingsBloc autoPaySettingsBloc;
  late final SiteBloc siteBloc;
  late final ColorPalette colorPalette;

  @override
  void initState() {
    super.initState();
    autoPayBloc = locator<AutoPayBloc>();
    localizations = locator<MaLocalizations>().I;
    autoPaySettingsBloc = locator<AutoPaySettingsBloc>();
    siteBloc = locator<SiteBloc>();
    colorPalette = locator<ColorPalette>();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BlocBuilder<AutoPayBloc, AutoPayState>(
      bloc: autoPayBloc,
      builder: (context, state) {
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
                state.setUpIsCompleted
                    ? localizations.settings
                    : localizations.setupAutoPay,
                style: textTheme.titleSmall!.copyWith(
                  color: colorPalette.appBarTextIcon,
                ),
              ),
              leadingWidth: state.setUpIsCompleted ? 120 : null,
              leading: autoPayBloc.state.setUpIsCompleted
                  ? LeadingSetUpIsCompleted(autoPayBloc: autoPayBloc)
                  : null,
              actions: [
                if (state.setUpIsCompleted)
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
                        title: localizations.changePaymentDate,
                        autoPayBloc: autoPayBloc,
                      ),
                    ],
                    bottomChildren: [
                      BottomPaymentDate(
                        actionLabel: localizations.saveButton,
                        navigation: () {
                          autoPaySettingsBloc.add(
                            AutoPaySettingsEvent.update(
                              residentId: siteBloc
                                  .state.selectedSite.resident.residentId,
                              autopayId: state.autopayId!,
                              paymentDate: state.paymentDate,
                              withdrawalAmount: state.withdrawalAmount,
                              withdrawalAmountOption:
                                  state.withdrawalAmountOption,
                              referenceId: state.referenceId,
                              residentUserId: state.residentUserId,
                            ),
                          );
                          context
                              .goNamed(AutopayRoutes.autopayLandingView.name!);
                        },
                      ),
                    ],
                    middleColor: colorPalette.surfaceContainerLowest,
                    middleHeight: 80,
                  ),
          ),
        );
      },
    );
  }
}
