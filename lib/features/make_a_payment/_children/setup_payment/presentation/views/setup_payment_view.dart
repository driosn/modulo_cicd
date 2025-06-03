import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/ma_theme.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/intellipay_dialog.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_basic_dialog_body.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_basic_dialog_html_body.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_basic_extended_dialog_body.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_dialog.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_title_content_dialog_body.dart';
import 'package:resident_app/core/presentation/widgets/forms/new_payment_account/entities/new_payment_account.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_textformfield.dart';
import 'package:resident_app/core/presentation/widgets/loading_wrapper.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_circular_progress_indicator.dart';
import 'package:resident_app/core/presentation/widgets/ma_scaler.dart';
import 'package:resident_app/core/presentation/widgets/ma_snackbar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/config/scaler_config.dart';
import 'package:resident_app/core/shared/extensions/context_extensions.dart';
import 'package:resident_app/core/shared/extensions/ma_dialog_extension.dart';
import 'package:resident_app/core/shared/helpers/double_helper.dart';
import 'package:resident_app/core/shared/helpers/loan_name_helper.dart';
import 'package:resident_app/core/shared/helpers/number_formatter_helper.dart';
import 'package:resident_app/core/shared/helpers/string_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/application/bloc/credit_card_payment/credit_card_payment_bloc.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/application/bloc/payment_settings/payment_settings_bloc.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/application/bloc/send_payment/send_payment_bloc.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/application/bloc/setup_payment/setup_payment_bloc.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/domain/entities/request_intellipay_code.dart';
import 'package:resident_app/features/make_a_payment/application/bloc/make_a_payment_bloc.dart';
import 'package:resident_app/features/make_a_payment/application/bloc/make_a_payment_navigation_bloc.dart';
import 'package:resident_app/features/make_a_payment/common/request_intellipay_code_params.dart';
import 'package:resident_app/features/make_a_payment/domain/entities/payment_option.dart';
import 'package:resident_app/features/make_a_payment/presentation/enums/make_a_payment_enums.dart';
import 'package:resident_app/features/make_a_payment/presentation/routes.dart';
import 'package:resident_app/features/make_a_payment/presentation/widgets/full_agreement_bottomsheet.dart';
import 'package:resident_app/features/make_a_payment/presentation/widgets/make_a_payment_widgets_views.dart';
import 'package:resident_app/features/payment_account/application/bloc/payment_accounts_bloc.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/user/user_feature.dart';

import '../../../../../../core/shared/common/enums/api_enums.dart';

part 'authorize_your_payment.dart';

part 'payment_amount.dart';

part 'payment_method.dart';

class SetupPaymentParams {
  const SetupPaymentParams({
    required this.paymentOption,
    required this.referenceTitle,
    required this.residentId,
    required this.residentUserId,
    this.processAditionalPayment = false,
    required this.makeAPaymentBloc,
  });

  final PaymentOption paymentOption;
  final String referenceTitle;
  final String residentId;
  final String residentUserId;

  // TODO: Define this with platform team
  final bool processAditionalPayment;
  final MakeAPaymentBloc makeAPaymentBloc;
}

class SetupPaymentView extends StatefulWidget {
  const SetupPaymentView({
    super.key,
    required this.params,
  });

  final SetupPaymentParams params;

  @override
  State<SetupPaymentView> createState() => _MakeAPaymentSetupPaymentViewState();
}

class _MakeAPaymentSetupPaymentViewState extends State<SetupPaymentView> {
  late final MakeAPaymentBloc _makeAPaymentBloc;
  late final SetupPaymentBloc _setupPaymentBloc;
  late final SendPaymentBloc _sendPaymentBloc;
  late final SiteBloc _siteBloc;
  late final UserBloc _userBloc;
  late final PaymentAccountsBloc _paymentAccountsBloc;
  late final PaymentSettingsBloc _paymentSettingsBloc;
  late final CreditCardPaymentBloc _creditCardPaymentBloc;

  final ValueNotifier<bool> _authorizedPaymentNotifier = ValueNotifier<bool>(false);

  final _intelliPayDialogIsLoading = ValueNotifier<bool>(false);

  final _localizations = locator<MaLocalizations>().I;

  @override
  void initState() {
    _initBlocs();

    _getPaymentSettings();

    super.initState();
  }

  @override
  void dispose() {
    _authorizedPaymentNotifier.dispose();
    _intelliPayDialogIsLoading.dispose();
    super.dispose();
  }

  void _initBlocs() {
    _makeAPaymentBloc = widget.params.makeAPaymentBloc;
    _setupPaymentBloc = locator<SetupPaymentBloc>();
    _sendPaymentBloc = locator<SendPaymentBloc>();
    _siteBloc = locator<SiteBloc>();
    _userBloc = locator<UserBloc>();
    _paymentAccountsBloc = locator<PaymentAccountsBloc>();
    _paymentSettingsBloc = locator<PaymentSettingsBloc>();
    _creditCardPaymentBloc = locator<CreditCardPaymentBloc>();
  }

  void _resetPaymentOptions() {
    _makeAPaymentBloc.add(
      MakeAPaymentEvent.initSelectablePayments(
        _siteBloc.state.selectedSite,
      ),
    );
  }

  void _getPaymentSettings() {
    _paymentSettingsBloc.add(
      PaymentSettingsEvent.getPaymentSettings(
        _userBloc.state.user.propertyId,
        widget.params.paymentOption.payToType,
      ),
    );
  }

  PaymentOption? getCurrentRentPaymentOptionIfExists() {
    return _makeAPaymentBloc.state.currentRentPayment;
  }

  void _showIntelliPayDialog(HttpServer server, RequestIntelliPayCode intelliPayCode) {
    _intelliPayDialogIsLoading.value = true;
    WidgetsBinding.instance.addPostFrameCallback(
          (_) {
        showDialog(
          // ignore: use_build_context_synchronously
          context: context,

          builder: (_) {
            return IntelliPayDialog(
              onLoadFinished: () {
                _intelliPayDialogIsLoading.value = false;
              },
              onApproved: () => _creditCardPaymentBloc.add(CreditCardPaymentEvent.approvePayment()),
              onNonApproved: () => _creditCardPaymentBloc.add(
                CreditCardPaymentEvent.declinePayment(),
              ),
              server: server,
              dialogParams: IntelliPayDialogParams(
                javascriptCode: intelliPayCode.intelliPayJavascriptCode,
                passThrough: intelliPayCode.passThrough,
                token: intelliPayCode.token,
                // amount: 1.0,
                amount: _setupPaymentBloc.state.paymentAmount.amount,
                email: locator<UserBloc>().state.user.residentUserEmail,
              ),
            );
          },
        );
      },
    );
  }

  void _showDeclinedSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      MASnackBar.failure(
        message: 'Your payment was declined, please try again later',
        duration: Duration(seconds: 6),
      ),
    );
  }

  void _goToPaymentConfirmation() {
    context.goNamed(
      MakeAPaymentRoutes.makeAPaymentConfirmation.name!,
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final textTheme = Theme.of(context).textTheme;

    return BlocListener<SendPaymentBloc, SendPaymentState>(
      bloc: _sendPaymentBloc,
      listener: (context, state) {
        state.whenOrNull(
          success: _goToPaymentConfirmation,
          failure: (error, makeAPaymentError) {
            if (makeAPaymentError != null) {
              context.showMADialog(
                maDialogBody: MABasicDialogHtmlBody(
                  title: makeAPaymentError.title,
                  text: makeAPaymentError.message,
                ),
                actions: [
                  MADialogAction(
                    label: makeAPaymentError.okButtonText ?? _localizations.ok,
                    onPressed: () {
                      makeAPaymentError.errorCode.maybeWhen(
                        previousPaymentAmountError: () {
                          context.pop();
                          _setupPaymentBloc.add(
                            const SetupPaymentEvent.validateSetupPayment(
                              processAdditionalPayment: true,
                            ),
                          );
                        },
                        orElse: context.pop,
                      );
                    },
                    style: MADialogActionStyle.elevated,
                  ),
                  ...makeAPaymentError.errorCode.maybeWhen(
                    previousPaymentAmountError: () => [
                      MADialogAction(
                        label: _localizations.cancelButton,
                        onPressed: () => context.pop(),
                        style: MADialogActionStyle.text,
                      )
                    ],
                    orElse: () => [],
                  ),
                ],
              );
            } else {
              context.showMASnackbar(
                MASnackBar.failure(
                  message: error.message,
                ),
              );
            }
          },
        );
      },
      child: BlocBuilder<PaymentSettingsBloc, PaymentSettingsState>(
        bloc: _paymentSettingsBloc,
        builder: (context, state) {
          return Stack(
            children: [
              BlocConsumer<CreditCardPaymentBloc, CreditCardPaymentState>(
                  bloc: _creditCardPaymentBloc,
                  listener: (context, creditCardState) {
                    creditCardState.whenOrNull(
                      readyIntelliPayDialog: _showIntelliPayDialog,
                      failureIntelliPayDialog: (error, makeAPaymentError) {
                        _intelliPayDialogIsLoading.value = false;

                        // TODO This logic was copied verbatim from the bank account logic. It should be refactored to a shared method.
                        // Begin copy of error handling logic
                        if (makeAPaymentError != null) {
                          context.showMADialog(
                            maDialogBody: MABasicDialogHtmlBody(
                              title: makeAPaymentError.title,
                              text: makeAPaymentError.message,
                            ),
                            actions: [
                              MADialogAction(
                                label: makeAPaymentError.okButtonText ?? _localizations.ok,
                                onPressed: () {
                                  makeAPaymentError.errorCode.maybeWhen(
                                    previousPaymentAmountError: () {
                                      context.pop();
                                      _setupPaymentBloc.add(
                                        const SetupPaymentEvent.validateSetupPayment(
                                          processAdditionalPayment: true,
                                        ),
                                      );
                                    },
                                    orElse: context.pop,
                                  );
                                },
                                style: MADialogActionStyle.elevated,
                              ),
                              MADialogAction(
                                label: _localizations.cancelButton,
                                onPressed: () => context.pop(),
                                style: MADialogActionStyle.text,
                              )
                            ],
                          );
                        } else {
                          context.showMASnackbar(
                            MASnackBar.failure(
                              message: error.message,
                            ),
                          );
                        }
                      },
                      paymentDeclined: _showDeclinedSnackBar,
                      success: _goToPaymentConfirmation,
                    );
                  },
                  builder: (context, creditCardState) {
                    return ValueListenableBuilder(
                        valueListenable: _intelliPayDialogIsLoading,
                        builder: (context, intelliPayDialogIsLoading, child) {
                          return LoadingWrapper(
                            isLoading: creditCardState.maybeWhen(
                              loadingIntelliPayDialog: () => true,
                              orElse: () => false,
                            ) ||
                                intelliPayDialogIsLoading,
                            child: Scaffold(
                              backgroundColor: colorPalette.surfaceContainerLowest,
                              appBar: MAAppBar(
                                leading: IconButton(
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: colorPalette.primary100,
                                  ),
                                  onPressed: () {
                                    if (locator<MakeAPaymentNavigationBloc>().state.navigatedFromSummary) {
                                      context.goNamed(
                                        CoreRoutes.home.name!,
                                      );
                                    } else {
                                      context.goNamed(
                                        MakeAPaymentRoutes.makeAPayment.name!,
                                      );
                                    }
                                  },
                                ),
                                bottom: const MABottomAppBar(),
                                maAppBarType: MAAppBarType.blue,
                                iconTheme: IconThemeData(
                                  color: colorPalette.appBarTextIcon,
                                ),
                                title: Text(
                                  _localizations.makeAPayment,
                                  style: textTheme.titleSmall!.copyWith(
                                    color: colorPalette.appBarTextIcon,
                                  ),
                                ),
                              ),
                              body: state.when(
                                initial: SizedBox.new,
                                loading: () => const Center(
                                  child: MACircularProgressIndicator(),
                                ),
                                failure: (error) => Center(
                                  child: Text(error.message),
                                ),
                                success: (
                                    displayBankAccount,
                                    displayCreditCard,
                                    displayMobileWallet,
                                    displayGooglePlay,
                                    displayPayPal,
                                    displayVenmo,
                                    isRBCPaymentAccount,
                                    ) {
                                  return BlocConsumer<SetupPaymentBloc, SetupPaymentState>(
                                    bloc: _setupPaymentBloc,
                                    listenWhen: (previous, current) {
                                      return previous.setupPaymentValidationStatus != current.setupPaymentValidationStatus;
                                    },
                                    listener: (BuildContext context, SetupPaymentState state) {
                                      state.setupPaymentValidationStatus.whenOrNull(
                                        valid: (){
                                          double totalCurrentDue = _userBloc.state.user.primarySite.residentBalance.loans
                                              .map((loan) => loan.currentDue)
                                              .fold(0.0, (prev, amount) => prev + amount);
                                          double paymentAmount = state.paymentAmount.amount;
                                          if (paymentAmount > totalCurrentDue && widget.params.paymentOption.payToType == PayToType.loan()) {
                                            context.showMADialog(
                                              maDialogBody: MATitleContentDialogBody(
                                                title: _localizations.overpaymentTitle,
                                                content: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      _localizations.overpaymentContent,
                                                      style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              actions: [
                                                MADialogAction(
                                                  label: _localizations.makeoverpayment,
                                                  onPressed: () {
                                                    context.pop();
                                                    WidgetsBinding.instance.addPostFrameCallback((_) {
                                                      context.showMADialog(
                                                        maDialogBody: MATitleContentDialogBody(
                                                          title: _localizations.paymentSummary,
                                                          content: DialogPaymentValid(
                                                            amount: paymentAmount,
                                                            paymentOption: widget.params.paymentOption,
                                                          ),
                                                        ),
                                                        actions: [
                                                          MADialogAction(
                                                            label: _localizations.cancel,
                                                            onPressed: () => context.pop(),
                                                            style: MADialogActionStyle.text,
                                                          ),
                                                          MADialogAction(
                                                            label: _localizations.makePayment,
                                                            onPressed: () {
                                                              context.pop();
                                                              if (_setupPaymentBloc.state.paymentMethodType == MPPaymentMethodType.creditCard) {
                                                                _creditCardPaymentBloc.add(
                                                                  CreditCardPaymentEvent.processIntelliPayDialog(
                                                                    RequestIntelliPayCodeParams(
                                                                      selectedSiteResidentId:
                                                                      locator<SiteBloc>().state.selectedSite.resident.residentId,
                                                                      amount: paymentAmount,
                                                                      processAdditionalPayment: state.processAdditionalPayment,
                                                                      referenceId: widget.params.paymentOption.referenceId,
                                                                      referenceTitle: 'Site: ${widget.params.referenceTitle}',
                                                                      residentId: widget.params.residentId,
                                                                      payTo: widget.params.paymentOption.payToType,
                                                                      paymentMethod: 2,
                                                                    ),
                                                                  ),
                                                                );
                                                                return;
                                                              }

                                                              _sendPaymentBloc.add(
                                                                SendPaymentEvent.sendPayment(
                                                                  amount: paymentAmount,
                                                                  payToType: widget.params.paymentOption.payToType,
                                                                  processAdditionalPayment: state.processAdditionalPayment,
                                                                  referenceId: widget.params.paymentOption.referenceId,
                                                                  referenceTitle: 'Site: ${widget.params.referenceTitle}',
                                                                  residentId: widget.params.residentId,
                                                                  residentUserId: widget.params.residentUserId,
                                                                ),
                                                              );
                                                            },
                                                            style: MADialogActionStyle.elevated,
                                                          ),
                                                        ],
                                                      );
                                                    });
                                                  },
                                                  style: MADialogActionStyle.elevated,
                                                ),
                                                MADialogAction(
                                                  label: _localizations.cancel.toUpperCase(),
                                                  onPressed: () => context.pop(),
                                                  style: MADialogActionStyle.text,
                                                ),
                                              ],
                                            );
                                          }
                                          else if (paymentAmount <= totalCurrentDue || widget.params.paymentOption.payToType == PayToType.rent()) {
                                            context.showMADialog(
                                              maDialogBody: MATitleContentDialogBody(
                                                title: _localizations.paymentSummary,
                                                content: DialogPaymentValid(
                                                  amount: state.paymentAmount.amount,
                                                  paymentOption: widget.params.paymentOption,
                                                ),
                                              ),
                                              actions: [
                                                MADialogAction(
                                                  label: _localizations.cancel,
                                                  onPressed: () => context.pop(),
                                                  style: MADialogActionStyle.text,
                                                ),
                                                MADialogAction(
                                                  label: _localizations.makePayment,
                                                  onPressed: () {
                                                    context.pop();
                                                    _sendPaymentBloc.add(
                                                      SendPaymentEvent.sendPayment(
                                                        amount: state.paymentAmount.amount,
                                                        payToType: widget.params.paymentOption.payToType,
                                                        processAdditionalPayment: state.processAdditionalPayment,
                                                        referenceId: widget.params.paymentOption.referenceId,
                                                        referenceTitle: 'Site: ${widget.params.referenceTitle}',
                                                        residentId: widget.params.residentId,
                                                        residentUserId: widget.params.residentUserId,
                                                      ),
                                                    );
                                                  },
                                                  style: MADialogActionStyle.elevated,
                                                ),
                                              ],
                                            );
                                          }
                                        },
                                      );
                                    },
                                    builder: (context, state) {
                                      return Column(
                                        children: [
                                          Expanded(
                                            child: RelationalPadding(
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    MASpacing.xxl(),
                                                    _PaymentAmount(
                                                      siteBloc: _siteBloc,
                                                      setupPaymentBloc: _setupPaymentBloc,
                                                      paymentOption: widget.params.paymentOption,
                                                      currentRentPaymentOption: widget.params.paymentOption.payToType.when(
                                                        rent: () => getCurrentRentPaymentOptionIfExists(),
                                                        loan: () => null,
                                                      ),
                                                    ),
                                                    _PaymentMethod(
                                                      makeAPaymentBloc: _makeAPaymentBloc,
                                                      paymentAccountsBloc: _paymentAccountsBloc,
                                                      setupPaymentBloc: _setupPaymentBloc,
                                                      displayFlags: _PaymentDisplayFlags(
                                                        displayBankAccount: displayBankAccount,
                                                        displayCreditCard: displayCreditCard,
                                                        displayMobileWallet: displayMobileWallet,
                                                      ),
                                                    ),
                                                    const RelationalSpace(),
                                                    MASpacing.s(),
                                                    _AuthorizeYourPayment(
                                                      authorizedPaymentNotifier: _authorizedPaymentNotifier,
                                                    ),
                                                    MASpacing.xxl(),
                                                    MAElevatedButton.secondary(
                                                      text: _localizations.cancelPayment,
                                                      onPressed: () {
                                                        context.showMADialog(
                                                          maDialogBody: MABasicDialogBody(
                                                            title: _localizations.cancelPayment.capitalize(),
                                                            text: _localizations.cancelPaymentDialogContent,
                                                          ),
                                                          actions: [
                                                            MADialogAction(
                                                              label: _localizations.cancelPayment,
                                                              onPressed: () => context.goNamed(
                                                                MakeAPaymentRoutes.makeAPayment.name!,
                                                              ),
                                                              style: MADialogActionStyle.elevated,
                                                            ),
                                                            MADialogAction(
                                                              label: _localizations.close,
                                                              onPressed: () => context.pop(),
                                                              style: MADialogActionStyle.text,
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    ),
                                                    MASpacing.m(),
                                                    ValueListenableBuilder<bool>(
                                                      valueListenable: _authorizedPaymentNotifier,
                                                      builder: (context, authorizedPayment, child) {
                                                        return MAElevatedButton(
                                                          text: _localizations.payNow.toUpperCase(),
                                                          onPressed: () {
                                                            if (_setupPaymentBloc.state.paymentMethodType == MPPaymentMethodType.none) {
                                                              context.showMADialog(
                                                                maDialogBody: MABasicExtendedDialogBody(
                                                                  title: _localizations.paymentMethodPascalCase,
                                                                  text: "",
                                                                  content: Row(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      Text(
                                                                        _localizations.youMustSelectAPaymentMethod,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                actions: [
                                                                  MADialogAction(
                                                                    label: _localizations.ok,
                                                                    onPressed: () {
                                                                      context.pop();
                                                                    },
                                                                    style: MADialogActionStyle.elevated,
                                                                  ),
                                                                ],
                                                              );
                                                            } else if (authorizedPayment) {
                                                              _setupPaymentBloc.add(
                                                                const SetupPaymentEvent.validateSetupPayment(
                                                                  processAdditionalPayment: false,
                                                                ),
                                                              );
                                                            } else {
                                                              context.showMADialog(
                                                                maDialogBody: MABasicExtendedDialogBody(
                                                                  title: _localizations.paymentMethodPascalCase,
                                                                  text: "",
                                                                  content: Row(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      Text(
                                                                        _localizations.youMustAuthorizeYourPayment,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                actions: [
                                                                  MADialogAction(
                                                                    label: _localizations.ok,
                                                                    onPressed: () {
                                                                      context.pop();
                                                                    },
                                                                    style: MADialogActionStyle.elevated,
                                                                  ),
                                                                ],
                                                              );
                                                            }
                                                          },
                                                        );
                                                      },
                                                    ),
                                                    MASpacing.xl(),
                                                    MASpacing.xl(),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          );
                        });
                  }),
              BlocBuilder<SendPaymentBloc, SendPaymentState>(
                bloc: _sendPaymentBloc,
                builder: (context, state) {
                  return state.maybeMap(
                    loading: (_) => MaterialProcessPaymentStatus(),
                    orElse: SizedBox.new,
                  );
                },
              )
            ],
          );
        },
      ),
    );
  }
}