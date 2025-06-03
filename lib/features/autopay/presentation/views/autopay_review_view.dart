import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/buttons.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_circular_progress_indicator.dart';
import 'package:resident_app/core/presentation/widgets/ma_snackbar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay_settings/autopay_settings_bloc.dart';
import 'package:resident_app/features/autopay/presentation/widgets/autopay_cancel_dialog.dart';
import 'package:resident_app/features/autopay/presentation/widgets/bank_account_card.dart';
import 'package:resident_app/features/autopay/presentation/widgets/monthly_withdrawal_card.dart';
import 'package:resident_app/features/autopay/presentation/widgets/payment_date_card.dart';
import 'package:resident_app/features/autopay/presentation/widgets/site_address_card.dart';
import 'package:resident_app/features/autopay/routes.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class AutopayReviewView extends StatefulWidget {
  const AutopayReviewView({super.key});

  @override
  State<AutopayReviewView> createState() => _AutopayReviewViewState();
}

class _AutopayReviewViewState extends State<AutopayReviewView> {
  //
  // Localizations
  //
  late AppLocalizations _localizations;

  late AutoPayBloc _autoPayBloc;
  late AutoPaySettingsBloc _autoPaySettingsBloc;
  late UserBloc _userBloc;
  late SiteBloc _siteBloc;

  @override
  void initState() {
    _autoPayBloc = locator<AutoPayBloc>();
    _autoPaySettingsBloc = locator<AutoPaySettingsBloc>();
    _localizations = locator<MaLocalizations>().I;
    _userBloc = locator<UserBloc>();
    _siteBloc = locator<SiteBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    String accountNumber = _autoPayBloc.state.accountNumber.value;
    final colorPalette = locator<ColorPalette>();
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        context.goNamed(AutopayRoutes.debitAutorization.name!);
      },
      child: BlocListener<AutoPaySettingsBloc, AutoPaySettingsState>(
        bloc: _autoPaySettingsBloc,
        listener: (context, state) {
          state.status.whenOrNull(
            loading: () => const Center(
              child: MACircularProgressIndicator(),
            ),
            success: () {
              context.goNamed(
                AutopayRoutes.autopayScheduledConfirmation.name!,
              );
            },
            failure: (failure) {
              context.goNamed(
                AutopayRoutes.autopayLandingView.name!,
              );
              ScaffoldMessenger.of(context).showSnackBar(
                MASnackBar.failure(
                  message: failure.message,
                ),
              );
            },
          );
        },
        child: Scaffold(
          backgroundColor: colorPalette.surfaceContainerLowest,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(65.0),
            child: MAAppBar(
              iconTheme: IconThemeData(
                color: colorPalette.appBarTextIcon,
              ),
              bottom: const MABottomAppBar(),
              title: Text(
                AppLocalizations.of(context)!.setupAutoPay,
                style: textTheme.titleSmall!.copyWith(
                  color: colorPalette.appBarTextIcon,
                ),
              ),
              maAppBarType: MAAppBarType.blue,
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
              color: colorPalette.surfaceContainerLowest,
            ),
            child: BlocBuilder<AutoPayBloc, AutoPayState>(
              bloc: _autoPayBloc,
              builder: (context, state) {
                return ListView(
                  children: [
                    RelationalPadding(
                      child: Column(
                        children: [
                          MASpacing.xxl(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              _localizations.reviewAutoPaySetUp,
                              textAlign: TextAlign.left,
                              style: textTheme.titleLarge,
                            ),
                          ),
                          MASpacing.xxl(),
                          MASpacing.m(),
                          Text(
                            _localizations.letsRiviewYourAutoPay,
                            textAlign: TextAlign.left,
                            style: textTheme.bodyMedium,
                          ),
                          MASpacing.xxl(),
                          SiteAddressCard(
                            site: _userBloc.state.user.primarySite,
                          ),
                          MASpacing.s(),
                          BankAccountCard(
                              autoPayBloc: _autoPayBloc,
                              accountNumber: accountNumber),
                          MASpacing.s(),
                          MonthlyWithdrawalCard(
                            withdrawalAmountOption:
                                state.withdrawalAmountOption,
                            withdrawalAmount: state.withdrawalAmount,
                          ),
                          MASpacing.s(),
                          PaymentDateCard(paymentDate: state.paymentDate),
                          MASpacing.s(),
                        ],
                      ),
                    ),
                    RelationalPadding(
                      child: Column(
                        children: [
                          MAElevatedButton.secondary(
                            text: _localizations.cancel.toUpperCase(),
                            onPressed: () {
                              const AutopayCancelDialog().showDialog(context);
                            },
                          ),
                          MASpacing.l(),
                          MAElevatedButton.primary(
                            text: _localizations.startAutoPay.toUpperCase(),
                            onPressed: () {
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
                            },
                          ),
                          MASpacing.s(),
                          MASpacing.xl(),
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
