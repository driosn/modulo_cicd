import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/buttons.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/presentation/widgets/vertical_rhythm.dart';
import 'package:resident_app/core/shared/common/enums/api_enums.dart';
import 'package:resident_app/core/shared/helpers/string_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/presentation/widgets/site_address.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/presentation/views/setup_payment_view.dart';
import 'package:resident_app/features/make_a_payment/application/bloc/make_a_payment_bloc.dart';
import 'package:resident_app/features/make_a_payment/domain/entities/payment_option.dart';
import 'package:resident_app/features/make_a_payment/presentation/routes.dart';
import 'package:resident_app/features/payment_account/application/bloc/payment_accounts_bloc.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/user/user_feature.dart';

class MakeAPaymentAccountAddedView extends StatefulWidget {
  const MakeAPaymentAccountAddedView({
    super.key,
  });

  @override
  State<MakeAPaymentAccountAddedView> createState() =>
      _MakeAPaymentAccountAddedViewState();
}

class _MakeAPaymentAccountAddedViewState
    extends State<MakeAPaymentAccountAddedView> with WidgetsBindingObserver {
  final _userBloc = locator<UserBloc>();
  final _siteBloc = locator<SiteBloc>();
  final _paymentAccountBloc = locator<PaymentAccountsBloc>();
  final _makeAPaymentBloc = locator<MakeAPaymentBloc>();

  final localizations = locator<MaLocalizations>().I;
  final colorPalette = locator<ColorPalette>();

  ///

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: colorPalette.surfaceContainerLowest,
      appBar: MAAppBar(
        maAppBarType: MAAppBarType.blue,
        title: Text(
          localizations.makeAPayment,
          style: textTheme.titleSmall!.copyWith(
            color: colorPalette.appBarTextIcon,
          ),
        ),
      ),
      body: VerticalRhythm(
        topChildren: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            decoration: BoxDecoration(
              color: colorPalette.appBarBg,
              border: Border(
                bottom: BorderSide(
                  color: colorPalette.appBarAccent,
                  width: 5,
                ),
              ),
            ),
            child: RelationalPadding(
              child: SiteAddress(
                site: _siteBloc.state.selectedSite,
                iconColor: colorPalette.secondary100,
                textColor: colorPalette.appBarTextIcon,
                onTap: () {},
              ),
            ),
          ),
          const RelationalSpace(),
          const SizedBox(
            height: 8,
          ),
          RelationalPadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  localizations.paymentAccountAdded,
                  style: textTheme.titleLarge?.copyWith(
                    color: colorPalette.textBase,
                  ),
                ),
                const RelationalSpace(),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 24,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: colorPalette.surfaceContainer,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _paymentAccountBloc.state.paymentAccounts
                                .bankAccountOption.bankAccountType.isChecking
                            ? locator<MaLocalizations>().I.checkingAccount
                            : locator<MaLocalizations>().I.savingsAccount,
                        style: textTheme.titleSmall,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        _paymentAccountBloc
                            .state.paymentAccounts.maskedBankAccountNumber
                            .maskedAccountNumber(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
        bottomChildren: [
          RelationalPadding(
            child: Column(
              children: [
                Text(
                  localizations.payNowWithThisAcc,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 16,
                ),
                MAElevatedButton.primary(
                  onPressed: () {
                    context.pushNamed(
                      MakeAPaymentRoutes.makeAPaymentSetupPayment.name!,
                      extra: SetupPaymentParams(
                        paymentOption: PaymentOption(
                          amount: _siteBloc.state.selectedSite.residentBalance
                              .currentMonthBalance,
                          payToType: const PayToType.rent(),
                          referenceId: defaultRentReferenceId,
                          label: defaultRentLabel,
                          loan: null,
                        ),
                        referenceTitle:
                            _userBloc.state.user.primarySite.siteName,
                        residentId: _userBloc
                            .state.user.primarySite.resident.residentId,
                        residentUserId: _userBloc.state.user.residentUserId,
                        makeAPaymentBloc: _makeAPaymentBloc,
                      ),
                    );
                  },
                  child: Text(localizations.makeAPayment.toUpperCase()),
                ),
                SizedBox(
                  height: MediaQuery.of(context).viewPadding.bottom,
                ),
                const SizedBox(
                  height: 16,
                )
              ],
            ),
          ),
        ],
        middleColor: colorPalette.surfaceContainerLowest,
        middleHeight: 78,
      ),
    );
  }
}
