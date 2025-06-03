import 'package:flutter/material.dart'
    hide showMenu, PopupMenuItem, PopupMenuDivider;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/badges/multi_char_badge.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_popup_menu_button.dart';
import 'package:resident_app/core/presentation/widgets/ma_scaler.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_fixed_spacing.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/extensions/int_extensions.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay_settings/autopay_settings_bloc.dart';
import 'package:resident_app/features/autopay/data/models/autopay_option_types.dart';
import 'package:resident_app/features/autopay/presentation/models/payment_date_view_params.dart';
import 'package:resident_app/features/autopay/presentation/widgets/autopay_charge_cancel_dialog.dart';
import 'package:resident_app/features/autopay/presentation/widgets/eft_notification_message.dart';
import 'package:resident_app/features/autopay/routes.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

enum AutopaySettings {
  changeWithdrawalAmount,
  changeRecurringPaymentDate,
  updatePaymentAccount,
  deletePaymentAccount,
}

class AutopayChargeCard extends StatelessWidget {
  AutopayChargeCard({
    super.key,
    required this.isEnable,
    required this.autoPayOptionType,
    required this.payDay,
    required this.autopayDescription,
    required this.autopayAmount,
    required this.autopayId,
    required this.referenceId,
    required this.residentId,
    required this.residentUserId,
  });

  final localizations = locator<MaLocalizations>().I;
  final colorPalette = locator<ColorPalette>();
  final String? autopayDescription;
  final String autopayAmount;
  final String? autopayId;
  final String referenceId;
  final String residentId;
  final String residentUserId;
  final bool isEnable;
  final AutoPayOptionTypes autoPayOptionType;
  final int payDay;

  AutopayChargeCard.disabled({
    super.key,
    this.isEnable = false,
    this.autoPayOptionType = AutoPayOptionTypes.empty,
    this.payDay = defaultPayDay,
    this.autopayDescription,
    this.autopayAmount = "",
    this.autopayId = '0',
    this.referenceId = '0',
    this.residentId = '',
    this.residentUserId = '',
  });

  final autopayBloc = locator<AutoPayBloc>();
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        MASpacing.s(),
        MASpacing.xxs(),
        Divider(
          color: colorPalette.primary300,
        ),
        MASpacing.xl(),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            autopayDescription ?? localizations.rent,
            style: textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
        MASpacing.l(),
        isEnable
            ? _AutopayEnabledChargeCard(
                autopayId: autopayId!,
                autopayOptionType: autoPayOptionType,
                payDay: payDay,
                autopayAmount: autopayAmount,
                referenceId: referenceId,
                autopayDescription: autopayDescription ?? localizations.rent,
                onSetupAutopay: () => autopayBloc.add(
                  AutoPayEvent.setAutopayId(
                    autopayId,
                    referenceId,
                    residentId,
                    residentUserId,
                  ),
                ),
              )
            : _AutopayNotEnabledChargeCard(
                autopayDescription,
                () => autopayBloc.add(
                      AutoPayEvent.setAutopayId(
                        autopayId,
                        referenceId,
                        residentId,
                        residentUserId,
                      ),
                    ),
                referenceId),
      ],
    );
  }
}

class _AutopayEnabledChargeCard extends StatelessWidget {
  _AutopayEnabledChargeCard({
    required this.autopayOptionType,
    required this.payDay,
    required this.autopayAmount,
    required this.autopayDescription,
    required this.referenceId,
    required this.autopayId,
    required this.onSetupAutopay,
  });
  final String autopayAmount;
  final String autopayId;
  final int payDay;
  final AutoPayOptionTypes autopayOptionType;
  final localizations = locator<MaLocalizations>().I;
  final colorPalette = locator<ColorPalette>();
  final String autopayDescription;
  final String referenceId;
  final VoidCallback onSetupAutopay;
  final AutoPayBloc autopayBloc = locator<AutoPayBloc>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BlocBuilder(
      bloc: locator<AutoPaySettingsBloc>(),
      builder: (BuildContext context, AutoPaySettingsState state) {
        return Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: MultiCharBadge(
                label: localizations.autoPayEnabled,
                color: colorPalette.pumpkinAccent,
                // color: const Color(0xffABF99F),
                textColor: colorPalette.textBase,
              ),
            ),
            MASpacing.l(),
            Row(
              children: [
                MAScaler(
                  child: Icon(
                    Icons.currency_exchange_rounded,
                    color: colorPalette.iconBaseTextIcon,
                  ),
                ),
                SizedBox(
                  width: MAFixedSpacing.s,
                ),
                Expanded(
                  child: Text(
                    switch (autopayOptionType) {
                      AutoPayOptionTypes.fixedAmount =>
                        localizations.fixedAmount(autopayAmount),
                      AutoPayOptionTypes.fullAmount => localizations.fullAmount,
                      AutoPayOptionTypes.fullAmountNotExceed =>
                        localizations.fullAmountNotExceed(autopayAmount),
                      AutoPayOptionTypes.empty => throw UnimplementedError(
                          "Autopay option type not implemented"),
                    },
                    style: textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
            MASpacing.s(),
            Row(
              children: [
                MAScaler(
                    child: SvgPicture(
                      SvgAssetLoader(
                        'assets/review_calendar.svg',
                      ),
                    ),
                ),
                MASpacing.s(axis: Axis.horizontal),
                MASpacing.xxs(axis: Axis.horizontal),
                Expanded(
                  child: Text(
                    localizations
                        .dayOfMonth('${payDay.toString()}${payDay.ordinal()}'),
                    style: textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
            MASpacing.xxl(),
            Row(
              children: [
                Expanded(
                  child: MAElevatedButton.secondary(
                      text: localizations.settings.toUpperCase(),
                      onPressed: () {
                        onSetupAutopay.call();
                        autopayBloc.add(
                          AutoPayEvent.startLoanPath(
                            referenceId != rentReferenceId,
                          ),
                        );
                        showAutopayPopupMenu(
                          context,
                          referenceId != rentReferenceId,
                        );
                        autopayBloc
                            .add(const AutoPayEvent.setIsAutopaySettings(true));
                      }),
                ),
                MASpacing.l(
                  axis: Axis.horizontal,
                ),
                Expanded(
                  child: MAElevatedButton.secondary(
                    text: localizations.cancel.toUpperCase(),
                    onPressed: () {
                      onSetupAutopay.call();
                      AutopayChargeCancelDialog(
                              autopayId: autopayId,
                              referenceId: referenceId,
                              autopayDescription: autopayDescription,
                              autopayOptionType: autopayOptionType)
                          .showDialog(context);
                    },
                  ),
                ),
              ],
            ),
            MASpacing.xxl(),
            MASpacing.s(),
          ],
        );
      },
    );
  }

  void showAutopayPopupMenu(BuildContext context, bool isLoan) async {
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;
    final textTheme = Theme.of(context).textTheme;
    final value = await showMenu<AutopaySettings>(
      context: context,
      position: RelativeRect.fromLTRB(
        0.0,
        Scaffold.of(context).appBarMaxHeight ?? 105,
        0.0,
        0.0,
      ),
      constraints: const BoxConstraints(
        minWidth: double.infinity,
      ),
      color: colorPalette.surfaceContainerLowest,
      surfaceTintColor: colorPalette.surfaceContainerLowest,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      items: [
        PopupMenuItem(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              //TODO: Update dinamically the charge popup menu title
              "$autopayDescription ${localizations.autoPaySettings}",
              style: textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w700,
                color: colorPalette.textBase,
              ),
            ),
          ),
        ),
        if (!isLoan)
          PopupMenuItem<AutopaySettings>(
            value: AutopaySettings.changeWithdrawalAmount,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                localizations.changeWithdrawal,
                style: textTheme.bodyMedium!.copyWith(
                  color: colorPalette.textBase,
                ),
              ),
            ),
          ),
        const PopupMenuDivider(
          height: 1,
        ),
        if (!isLoan)
          PopupMenuItem<AutopaySettings>(
            value: AutopaySettings.changeRecurringPaymentDate,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                localizations.updateAutoPayDates,
                style: textTheme.bodyMedium!.copyWith(
                  color: colorPalette.textBase,
                ),
              ),
            ),
          ),
        const PopupMenuDivider(
          height: 1,
        ),
        PopupMenuItem<AutopaySettings>(
          value: AutopaySettings.updatePaymentAccount,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              localizations.changePaymentAccount,
              style: textTheme.bodyMedium!.copyWith(
                color: colorPalette.textBase,
              ),
            ),
          ),
        ),
      ],
    );
    autopayBloc.add(const AutoPayEvent.setIsAutopaySettings(false));
    if (value != null) {
      handleAutopaySettingsSelection(context, value);
    }
  }

  void handleAutopaySettingsSelection(
    BuildContext context,
    AutopaySettings value,
  ) {
    final autoPayBloc = locator<AutoPayBloc>();
    final paymentDateViewParams = PaymentDateViewParams();
    switch (value) {
      case AutopaySettings.changeWithdrawalAmount:
        autoPayBloc.add(const AutoPayEvent.setLatestPaymentAccountSettings());
        paymentDateViewParams.update(
          isAutoPayLandingView: true,
          isReviewView: false,
        );
        context.goNamed(AutopayRoutes.autopayUpdateWidthdrawalAmount.name!);
        break;
      case AutopaySettings.changeRecurringPaymentDate:
        autoPayBloc.add(const AutoPayEvent.setLatestPaymentAccountSettings());
        paymentDateViewParams.update(
          isAutoPayLandingView: true,
          isReviewView: false,
        );
        context.goNamed(AutopayRoutes.autopayUpdatePaymentDate.name!);
        break;
      case AutopaySettings.updatePaymentAccount:
        autoPayBloc.add(const AutoPayEvent.setAllFieldsAreValidate());
        autoPayBloc.add(const AutoPayEvent.setLatestPaymentAccountSettings());
        autoPayBloc.add(const AutoPayEvent.resetPaymentAccountSettings());

        paymentDateViewParams.update(
          isAutoPayLandingView: true,
          isReviewView: false,
        );
        context.goNamed(AutopayRoutes.paymentAccountUpdateAutopay.name!);
        break;
      case AutopaySettings.deletePaymentAccount:
        break;
      default:
    }
  }
}

class _AutopayNotEnabledChargeCard extends StatelessWidget {
  _AutopayNotEnabledChargeCard(
      this.buttonLabel, this.onSetupAutopay, this.referenceId);
  final String? buttonLabel;
  final VoidCallback onSetupAutopay;
  final String referenceId;

  final localizations = locator<MaLocalizations>().I;

  final colorPalette = locator<ColorPalette>();

  final autopayBloc = locator<AutoPayBloc>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: MultiCharBadge(
            label: localizations.autopayNotEnabled,
            color: colorPalette.surfaceContainer,
            textColor: colorPalette.buttonSecondaryLabel,
          ),
        ),
        MASpacing.xxl(),
        MASpacing.m(),
        hasEftEnrolled()
            ? EftnotificationMessage()
            : MAElevatedButton.primary(
                //TODO: Update dinamically the charge
                text:
                    "${localizations.setupAutoPayFor} ${(buttonLabel ?? localizations.rent).toUpperCase()}",
                onPressed: () {
                  final paymentDateViewParams = PaymentDateViewParams();
                  onSetupAutopay.call();
                  autopayBloc.add(AutoPayEvent.startLoanPath(
                      referenceId != rentReferenceId));
                  autopayBloc.add(
                      AutoPayEvent.setPaymentTypeAutopaySettingsEventString(
                          buttonLabel));
                  paymentDateViewParams.update(
                    isAutoPayLandingView: false,
                    isReviewView: false,
                  );
                  context.pushNamed(AutopayRoutes.autopaySetUp.name!);
                },
              ),
        MASpacing.xxl(),
      ],
    );
  }

  bool hasEftEnrolled() => locator<UserBloc>()
      .state
      .user
      .primarySite
      .residentBalance
      .isEftConfigured;
}
