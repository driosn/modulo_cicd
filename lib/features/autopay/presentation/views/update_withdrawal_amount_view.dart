import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/vertical_rhythm.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay_settings/autopay_settings_bloc.dart';
import 'package:resident_app/features/autopay/presentation/widgets/autopay_widgets.dart';
import 'package:resident_app/features/autopay/routes.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class UpdateWithdrawalAmountView extends StatefulWidget {
  const UpdateWithdrawalAmountView({super.key});

  @override
  State<UpdateWithdrawalAmountView> createState() =>
      _UpdateWithdrawalAmountViewState();
}

class _UpdateWithdrawalAmountViewState
    extends State<UpdateWithdrawalAmountView> {
  late final AppLocalizations _localizations;
  late final UserBloc _userBloc;
  late final AutoPayBloc _autoPayBloc;
  late final AutoPaySettingsBloc _autoPaySettingsBloc;
  late final SiteBloc _siteBloc;

  @override
  void initState() {
    super.initState();
    _localizations = locator<MaLocalizations>().I;
    _autoPaySettingsBloc = locator<AutoPaySettingsBloc>();
    _autoPayBloc = locator<AutoPayBloc>();
    _siteBloc = locator<SiteBloc>();
    _userBloc = locator<UserBloc>();
  }

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final isFullBalanceOnly = _userBloc
        .state.user.primarySite.propertySettings.autoPayFullBalanceOnly;
    final textTheme = Theme.of(context).textTheme;
    return PopScope(
      onPopInvokedWithResult: (didPop, value) {
        context.goNamed(AutopayRoutes.autopayLandingView.name!);
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
            _localizations.setupAutoPay,
            style: textTheme.titleSmall!.copyWith(
              color: colorPalette.appBarTextIcon,
            ),
          ),
        ),
        body: isFullBalanceOnly
            ? VerticalRhythm(
                topChildren: const [
                  TopWithdrawalAmount(),
                ],
                bottomChildren: [
                  BlocBuilder<AutoPayBloc, AutoPayState>(
                    bloc: _autoPayBloc,
                    builder: (context, state) {
                      return BottomWithdrawalAmount(
                        actionLabel: _localizations.saveButton,
                        navigation: () {
                          _autoPaySettingsBloc.add(
                            AutoPaySettingsEvent.update(
                              residentId: _siteBloc
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
                      );
                    },
                  ),
                ],
                middleColor: colorPalette.surfaceContainerLowest,
                middleHeight: 80,
              )
            : ListView(
                children: const [
                  TopWithdrawalAmount(),
                  WithdrawalOptions(
                    updateAction: true,
                  ),
                ],
              ),
      ),
    );
  }
}
