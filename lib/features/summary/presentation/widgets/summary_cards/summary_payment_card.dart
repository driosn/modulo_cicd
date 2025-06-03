import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:resident_app/core/application/bloc/user_preferences/user_preferences_bloc.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/data/models/language_model.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_basic_dialog_html_body.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_dialog.dart';
import 'package:resident_app/core/presentation/widgets/ma_divider.dart';
import 'package:resident_app/core/presentation/widgets/payment_suspended_info_card.dart';
import 'package:resident_app/core/shared/common/enums/api_enums.dart';
import 'package:resident_app/core/shared/extensions/ma_dialog_extension.dart';
import 'package:resident_app/core/shared/extensions/string_extensions.dart';
import 'package:resident_app/core/shared/helpers/loan_name_helper.dart';
import 'package:resident_app/core/shared/helpers/number_formatter_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/presentation/widgets/site_address.dart';
import 'package:resident_app/features/autopay/routes.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/presentation/views/setup_payment_view.dart';
import 'package:resident_app/features/make_a_payment/application/bloc/make_a_payment_bloc.dart';
import 'package:resident_app/features/make_a_payment/application/bloc/make_a_payment_navigation_bloc.dart';
import 'package:resident_app/features/make_a_payment/domain/entities/payment_option.dart';
import 'package:resident_app/features/make_a_payment/presentation/routes.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/user/user_feature.dart';

class SummaryPaymentCard extends StatelessWidget {
  const SummaryPaymentCard({
    super.key,
    required this.primarySite,
    required this.onTapSite,
  });

  final PrimarySite primarySite;
  final VoidCallback onTapSite;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final localizations = locator<MaLocalizations>().I;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 4,
      ),
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 24,
        left: 24,
        right: 24,
      ),
      decoration: BoxDecoration(
        color: colorPalette.cardBg,
        borderRadius: BorderRadius.circular(12),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: 3,
            spreadRadius: 1,
            // color: Colors.black.withOpacity(0.15),
            color: colorPalette.cardBorder,
          ),
          BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: 2,
            spreadRadius: 0,
            color: colorPalette.cardBorder,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            localizations.paymentsLabel,
            style: textTheme.titleMedium?.copyWith(
              color: colorPalette.textBase,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          SiteAddress(
            site: primarySite,
            iconColor: colorPalette.iconBaseTextIcon,
            textColor: colorPalette.textBase,
            onTap: onTapSite,
          ),
          const SizedBox(
            height: 12,
          ),
          _RentInfo(
            propertySettings: primarySite.propertySettings,
            residentBalance: primarySite.residentBalance,
            resident: primarySite.resident,
          ),
          primarySite.resident.isOnStopPay
              ? SizedBox()
              : _LoansInfo(
                  loans: primarySite.residentBalance.loans,
                )
        ],
      ),
    );
  }
}

class _RentInfo extends StatelessWidget {
  const _RentInfo({
    required this.propertySettings,
    required this.residentBalance,
    required this.resident,
  });

  final PropertySettings propertySettings;
  final ResidentBalance residentBalance;
  final Resident resident;

  @override
  Widget build(BuildContext context) {
    final localizations = locator<MaLocalizations>().I;
    final colorPalette = locator<ColorPalette>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: double.infinity,
        ),
        Text(
          localizations.rent.toUpperCase(),
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          height: 8,
        ),
        MADivider(
          height: 2,
          color: colorPalette.tertiaryBase,
        ),
        const SizedBox(
          height: 8,
        ),
        _pendingRentPayments(context),
      ],
    );
  }

  Widget _pendingRentPayments(BuildContext context) {
    final localizations = locator<MaLocalizations>().I;
    final colorPalette = locator<ColorPalette>();
    final numberFormatterHelper = locator<NumberFormatterHelper>();
    final textTheme = Theme.of(context).textTheme;
    final makeAPaymentBloc = locator<MakeAPaymentBloc>();
    final siteBloc = locator<SiteBloc>();
    final userBloc = locator<UserBloc>();
    final user = userBloc.state.user;

    final setupPaymentParams = SetupPaymentParams(
      paymentOption: PaymentOption(
        amount: siteBloc.state.selectedSite.residentBalance.totalBalance,
        payToType: const PayToType.rent(),
        referenceId: defaultRentReferenceId,
        label: defaultRentLabel,
        loan: null,
      ),
      referenceTitle: userBloc.state.user.primarySite.siteName,
      residentId: userBloc.state.user.primarySite.resident.residentId,
      residentUserId: user.residentUserId,
      makeAPaymentBloc: makeAPaymentBloc,
    );

    // TODO: Update this when handling language
    Language selectedLanguage =
        context.read<UserPreferencesBloc>().state.selectedLanguage;
    final DateFormat dateFormat = selectedLanguage == Language.english
        ? DateFormat('MMM d, yyyy', 'en_ES')
        : DateFormat('MMM d, yyyy', 'es_US');

    return Column(
      children: [
        const SizedBox(
          height: 8,
        ),
        if (propertySettings.displayCurrentBalance) ...[
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    localizations.currentDue.toUpperCase(),
                    style: textTheme.labelMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    '\$${numberFormatterHelper.currencyFormat.format(residentBalance.currentMonthBalance)}',
                    style: textTheme.titleMedium,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          MADivider(
            height: 1,
            color: colorPalette.surfaceContainer,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  localizations.totalDue.toUpperCase(),
                  style: textTheme.labelMedium,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  dateFormat
                      .format(DateTime.parse(residentBalance.rentDueDate))
                      .toPascalCase(),
                  style: textTheme.labelMedium,
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  '\$${numberFormatterHelper.currencyFormat.format(residentBalance.totalBalance)}',
                  style: textTheme.titleMedium,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        if (resident.isOnStopPay) PaymentSuspendedInfoCard(),
        resident.isOnStopPay
            ? SizedBox()
            : residentBalance.autoPaySettings.isActive
                ? Container(
                    decoration: BoxDecoration(
                        color: colorPalette.pumpkinAccent,
                        borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/auto_pay.svg',
                          colorFilter: ColorFilter.mode(
                            colorPalette.textBase,
                            BlendMode.srcIn,
                          ),
                          height: 18,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Builder(
                          builder: (context) {
                            final rentDueDate =
                                DateTime.parse(residentBalance.rentDueDate);
                            final now = DateTime.now();
                            final rentDate = now.isBefore(rentDueDate)
                                ? dateFormat
                                    .format(DateTime(
                                      rentDueDate.year,
                                      rentDueDate.month,
                                      residentBalance
                                              .autoPaySettings.autoPayDay ??
                                          rentDueDate.day,
                                    ))
                                    .toPascalCase()
                                : dateFormat
                                    .format(DateTime(
                                      now.year,
                                      now.month + 1,
                                      residentBalance
                                              .autoPaySettings.autoPayDay ??
                                          rentDueDate.day,
                                    ))
                                    .toPascalCase();

                            return Text(
                              '${localizations.autoPay} $rentDate',
                              style: textTheme.bodyMedium,
                            );
                          },
                        ),
                      ],
                    ),
                  )
                : MAElevatedButton.secondary(
                    text: localizations.enrollInAutoPay.toUpperCase(),
                    onPressed: () => _goToAutoPay(context),
                  ),
        resident.isOnStopPay
            ? SizedBox()
            : const SizedBox(
                height: 16,
              ),
        resident.isOnStopPay
            ? SizedBox()
            : residentBalance.autoPaySettings.isActive
                ? MAElevatedButton.secondary(
                    text: localizations.makeAPayment.toUpperCase(),
                    onPressed: () => _makeARentPaymentNavigation(
                      makeAPaymentBloc: makeAPaymentBloc,
                      siteBloc: siteBloc,
                      context: context,
                      userBloc: userBloc,
                      user: user,
                    ),
                  )
                : MAElevatedButton(
                    text: localizations.makeAPayment.toUpperCase(),
                    onPressed: () {
                      context.showMADialog(
                          maDialogBody: MABasicDialogHtmlBody(
                              title: localizations.youAreEnrolledInEft,
                              text: localizations.makeAPaymentEftDescription),
                          actions: [
                            MADialogAction(
                              label: localizations.makeAPayment.toUpperCase(),
                              onPressed: () => context.pushNamed(
                                  MakeAPaymentRoutes
                                      .makeAPaymentSetupPayment.name!,
                                  extra: setupPaymentParams),
                              style: MADialogActionStyle.elevated,
                            ),
                            MADialogAction(
                              label: localizations.cancelButton,
                              onPressed: () => context.pop(),
                              style: MADialogActionStyle.text,
                            ),
                          ]);
                      [];
                    }),
      ],
    );
  }

  void _makeARentPaymentNavigation({
    required MakeAPaymentBloc makeAPaymentBloc,
    required SiteBloc siteBloc,
    required BuildContext context,
    required UserBloc userBloc,
    required User user,
  }) {
    final makeAPaymentNavigationBloc = locator<MakeAPaymentNavigationBloc>();
    final setupPaymentParams = SetupPaymentParams(
      paymentOption: PaymentOption(
        amount: siteBloc.state.selectedSite.residentBalance.totalBalance,
        payToType: const PayToType.rent(),
        referenceId: defaultRentReferenceId,
        label: defaultRentLabel,
        loan: null,
      ),
      referenceTitle: userBloc.state.user.primarySite.siteName,
      residentId: userBloc.state.user.primarySite.resident.residentId,
      residentUserId: user.residentUserId,
      makeAPaymentBloc: makeAPaymentBloc,
    );

    if (hasEftEnrolled()) {
      navigateEftEnrolled(
        context,
        setupPaymentParams,
      );
      return;
    }

    makeAPaymentBloc.add(
      MakeAPaymentEvent.initSelectablePayments(
        siteBloc.state.selectedSite,
      ),
    );

    makeAPaymentNavigationBloc.add(
      MakeAPaymentNavigationEvent.setNavigatedFromSummary(
        isNavigatedFromSummary: true,
      ),
    );
    context.pushNamed(
      MakeAPaymentRoutes.makeAPaymentSetupPayment.name!,
      extra: setupPaymentParams,
    );
  }

  void _goToAutoPay(BuildContext context) =>
      context.pushNamed(AutopayRoutes.autopayLandingView.name!);

  bool hasEftEnrolled() => locator<UserBloc>()
      .state
      .user
      .primarySite
      .residentBalance
      .isEftConfigured;

  void navigateEftEnrolled(BuildContext context, setupPaymentParams) =>
      context.pushNamed(MakeAPaymentRoutes.makeAPaymentEFTEnrolled.name!,
          extra: setupPaymentParams);
}

class _LoansInfo extends StatelessWidget {
  const _LoansInfo({
    required this.loans,
  });

  final List<Loan> loans;

  @override
  Widget build(BuildContext context) {
    if (loans.isEmpty) return const SizedBox();

    return Column(
        children: loans.map((loan) => _loanInfo(context, loan)).toList());
  }

  Widget _loanInfo(BuildContext context, Loan loan) {
    final textTheme = Theme.of(context).textTheme;
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;

    String getLoansHeaderTitle(Loan loan) {
      if (loan.loanApplicationType == 3) {
        return localizations.homeLoan.toUpperCase();
      }

      if (loan.loanApplicationType == 4) {
        return localizations.rentToOwn.toUpperCase();
      }

      if (loan.loanApplicationType == 7) {
        return localizations.leaseOption.toUpperCase();
      }
      return '';
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 48,
        ),
        Text(
          getLoansHeaderTitle(loan),
          style: textTheme.titleSmall,
        ),
        const SizedBox(
          height: 8,
        ),
        MADivider(
          height: 2,
          color: colorPalette.tertiaryBase,
        ),
        const SizedBox(
          height: 8,
        ),
        _pendingLoanPayments(context, loan)
      ],
    );
  }

  Widget _pendingLoanPayments(BuildContext context, Loan loan) {
    final localizations = locator<MaLocalizations>().I;
    final colorPalette = locator<ColorPalette>();
    final numberFormatterHelper = locator<NumberFormatterHelper>();
    final textTheme = Theme.of(context).textTheme;
    final makeAPaymentBloc = locator<MakeAPaymentBloc>();
    final userBloc = locator<UserBloc>();
    final user = userBloc.state.user;

    // TODO: Update this when handling language
    Language selectedLanguage =
        context.read<UserPreferencesBloc>().state.selectedLanguage;
    final DateFormat dateFormat = selectedLanguage == Language.english
        ? DateFormat('MMM d, yyyy', 'en_ES')
        : DateFormat('MMM d, yyyy', 'es_US');

    return Column(
      children: [
        const SizedBox(
          height: 8,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  localizations.currentDue.toUpperCase(),
                  style: textTheme.labelMedium,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  dateFormat
                      .format(DateTime.parse(loan.dueDate))
                      .toPascalCase(),
                  style: textTheme.labelMedium,
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  '\$${numberFormatterHelper.currencyFormat.format(loan.currentDue)}',
                  style: textTheme.titleMedium,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 28,
        ),
        loan.autoPaySettings.isActive
            ? Container(
                decoration: BoxDecoration(
                    color: colorPalette.pumpkinAccent,                    
                    borderRadius: BorderRadius.circular(8)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/auto_pay.svg',
                      colorFilter: ColorFilter.mode(
                        colorPalette.textBase,
                        BlendMode.srcIn,
                      ),
                      height: 18,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Builder(
                      builder: (context) {
                        final loanDueDate = DateTime.parse(loan.dueDate);
                        final rentDate = DateTime.now().isBefore(loanDueDate)
                            ? dateFormat
                                .format(DateTime(
                                  loanDueDate.year,
                                  loanDueDate.month,
                                  loan.autoPaySettings.autoPayDay ??
                                      loanDueDate.day,
                                ))
                                .toPascalCase()
                            : dateFormat
                                .format(DateTime(
                                  loanDueDate.year,
                                  loanDueDate.month + 1,
                                  loan.autoPaySettings.autoPayDay ??
                                      loanDueDate.day,
                                ))
                                .toPascalCase();

                        return Text(
                          '${localizations.autoPay} $rentDate',
                          style: textTheme.bodyMedium,
                        );
                      },
                    ),
                  ],
                ),
              )
            : MAElevatedButton.secondary(
                text: localizations.enrollInAutoPay.toUpperCase(),
                onPressed: () => _goToAutoPay(context),
              ),
        const SizedBox(
          height: 16,
        ),
        !loan.autoPaySettings.isActive
            ? MAElevatedButton.secondary(
                text: localizations.makeAPayment.toUpperCase(),
                onPressed: () => _makeAPaymentLoanNavigation(
                  context: context,
                  loan: loan,
                  userBloc: userBloc,
                  user: user,
                  makeAPaymentBloc: makeAPaymentBloc,
                ),
              )
            : MAElevatedButton(
                text: localizations.makeAPayment.toUpperCase(),
                onPressed: () => _makeAPaymentLoanNavigation(
                  context: context,
                  loan: loan,
                  userBloc: userBloc,
                  user: user,
                  makeAPaymentBloc: makeAPaymentBloc,
                ),
              ),
      ],
    );
  }

  void _makeAPaymentLoanNavigation({
    required BuildContext context,
    required Loan loan,
    required UserBloc userBloc,
    required User user,
    required MakeAPaymentBloc makeAPaymentBloc,
  }) {
    if (hasEftEnrolled()) {
      navigateEftEnrolled(context);
      return;
    }

    final LoanNameHelper loanNameHelper = locator<LoanNameHelper>();

    context.pushNamed(
      MakeAPaymentRoutes.makeAPaymentSetupPayment.name!,
      extra: SetupPaymentParams(
        paymentOption: PaymentOption(
          amount: loan.currentDue,
          payToType: const PayToType.loan(),
          referenceId: loan.loanId.toString(),
          label: loanNameHelper.getOptionLabel(loan),
          loan: loan,
        ),
        referenceTitle: userBloc.state.user.primarySite.siteName,
        residentId: userBloc.state.user.primarySite.resident.residentId,
        residentUserId: user.residentUserId,
        makeAPaymentBloc: makeAPaymentBloc,
      ),
    );
  }

  void _goToAutoPay(BuildContext context) =>
      context.pushNamed(AutopayRoutes.autopayLandingView.name!);

  bool hasEftEnrolled() => locator<UserBloc>()
      .state
      .user
      .primarySite
      .residentBalance
      .isEftConfigured;

  void navigateEftEnrolled(BuildContext context) =>
      context.pushNamed(MakeAPaymentRoutes.makeAPaymentEFTEnrolled.name!);
}
