import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_basic_extended_dialog_body.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_dialog.dart';
import 'package:resident_app/core/presentation/widgets/forms/new_payment_account/bloc/new_payment_account_form_bloc.dart';
import 'package:resident_app/core/presentation/widgets/forms/new_payment_account/new_payment_account_form.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_circular_progress_indicator.dart';
import 'package:resident_app/core/presentation/widgets/ma_snackbar.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/extensions/ma_dialog_extension.dart';
import 'package:resident_app/core/shared/helpers/string_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/presentation/widgets/review_label.dart';
import 'package:resident_app/features/payment_account/application/bloc/payment_accounts_bloc.dart';
import 'package:resident_app/features/payment_account/routes.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';
import 'package:resident_app/features/user/user_feature.dart';

class PaymentAccountUpdateView extends StatefulWidget {
  const PaymentAccountUpdateView({
    super.key,
  });
  @override
  State<PaymentAccountUpdateView> createState() =>
      _PaymentAccountUpdateViewState();
}

class _PaymentAccountUpdateViewState extends State<PaymentAccountUpdateView> {
  late NewPaymentAccountFormBloc _newPaymentAccountFormBloc;
  late UserBloc _userBloc;
  late SiteBloc _siteBloc;
  late PaymentAccountsBloc _paymentAccountsBloc;
  late ColorPalette _colorPalette;
  late AppLocalizations _localizations;
  late bool isRBCPaymentAccount;

  @override
  void initState() {
    _newPaymentAccountFormBloc = locator<NewPaymentAccountFormBloc>();
    _userBloc = locator<UserBloc>();
    _siteBloc = locator<SiteBloc>();
    _paymentAccountsBloc = locator<PaymentAccountsBloc>();
    _colorPalette = locator<ColorPalette>();
    _localizations = locator<MaLocalizations>().I;
    isRBCPaymentAccount = _paymentAccountsBloc.state.isRBCPaymentAccount;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentAccountsBloc, PaymentAccountsState>(
      bloc: _paymentAccountsBloc,
      listener: (context, state) {
        state.updateStatus.whenOrNull(
          success: () {
            _paymentAccountsBloc.add(PaymentAccountsEvent.restart());
            if (isRBCPaymentAccount) {
              _paymentAccountsBloc.add(
                PaymentAccountsEvent.getPaymentAccounts(
                  residentId: _siteBloc.state.selectedSite.resident.residentId,
                ),
              );
            }
            context.goNamed(
              PaymentAccountRoutes.paymentAccountSettings.name!,
            );
            ScaffoldMessenger.of(context).showSnackBar(
              MASnackBar.success(
                message: _localizations.accountInformationUpdated,
              ),
            );
          },
          failure: (error) {
            error.maybeWhen(
              badRequest: (error) {
                _newPaymentAccountFormBloc.add(
                  NewPaymentAccountFormEvent.setRoutingNumberError(
                    message: _localizations.invalidNumber,
                  ),
                );
              },
              orElse: () {
                _paymentAccountsBloc.add(
                  PaymentAccountsEvent.restart(),
                );
                context.showMADialog(
                  maDialogBody: MABasicExtendedDialogBody(
                    title: _localizations.changePaymentAccount,
                    text: error.message,
                    content: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/bank-account.svg',
                          fit: BoxFit.contain,
                          colorFilter: ColorFilter.mode(
                            _colorPalette.iconBaseTextIcon,
                            BlendMode.srcIn,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ReviewLabel(
                                state.paymentAccounts.bankAccountOption
                                        .bankAccountType.isChecking
                                    ? _localizations.checkingAccount
                                    : _localizations.savingsAccount,
                              ),
                              ReviewLabel(
                                state.paymentAccounts.maskedBankAccountNumber
                                    .maskedAccountNumber(),
                              ),
                              MASpacing.xxl(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  actions: [
                    MADialogAction(
                      label: _localizations.goBack,
                      onPressed: () => context.pushReplacementNamed(
                          PaymentAccountRoutes.paymentAccountSettings.name!),
                      style: MADialogActionStyle.elevated,
                    ),
                  ],
                );
              },
            );
          },
        );
      },
      builder: (BuildContext context, PaymentAccountsState state) {
        return PopScope(
          canPop: false,
          child: Scaffold(
            backgroundColor: _colorPalette.surfaceContainerLowest,
            appBar: MAAppBar(
              iconTheme: IconThemeData(
                color: _colorPalette.appBarTextIcon,
              ),
              bottom: const MABottomAppBar(),
              maAppBarType: MAAppBarType.blue,
              title: Text(
                _localizations.paymentAccountSetUp,
              ),
              leading: IconButton(
                onPressed: () {
                  context.goNamed(
                    PaymentAccountRoutes.paymentAccountSettings.name!,
                  );
                },
                icon: const Icon(
                  Icons.arrow_back,
                ),
              ),
            ),
            body: state.updateStatus.maybeWhen(
              processing: () {
                return const Center(
                  child: MACircularProgressIndicator(),
                );
              },
              orElse: () {
                return NewPaymentAccountForm(
                  isCreate: false,
                  newPaymentAccountFormBloc: _newPaymentAccountFormBloc,
                  onCancelPressed: () {
                    context.goNamed(
                      PaymentAccountRoutes.paymentAccountSettings.name!,
                    );
                  },
                  onAccountSaved: (account) {
                    context.showMADialog(
                      maDialogBody: MABasicExtendedDialogBody(
                        title: _localizations.confirmYourChanges,
                        text: "",
                        content: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'assets/bank-account.svg',
                              fit: BoxFit.contain,
                              colorFilter: ColorFilter.mode(
                                _colorPalette.iconBaseTextIcon,
                                BlendMode.srcIn,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ReviewLabel(
                                    _newPaymentAccountFormBloc.state.name.value,
                                  ),
                                  ReviewLabel(
                                    _newPaymentAccountFormBloc
                                                .state.accountType.name ==
                                            'Checking'
                                        ? _localizations.checkingAccount
                                        : _localizations.savingsAccount,
                                  ),
                                  ReviewLabel(
                                    _newPaymentAccountFormBloc
                                        .state.accountNumber.value
                                        .maskedAccountNumber(),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      actions: [
                        MADialogAction(
                          label: _localizations.saveChanges,
                          onPressed: () {
                            _paymentAccountsBloc.add(
                              PaymentAccountsEvent.update(
                                paymentAccount: account,
                                residentId: _siteBloc
                                    .state.selectedSite.resident.residentId,
                                residentUserId:
                                    _userBloc.state.user.residentUserId,
                              ),
                            );
                            context.pop();
                          },
                          style: MADialogActionStyle.elevated,
                        ),
                        MADialogAction(
                          label: _localizations.cancel,
                          onPressed: () {
                            context.pop();
                          },
                          style: MADialogActionStyle.text,
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}
