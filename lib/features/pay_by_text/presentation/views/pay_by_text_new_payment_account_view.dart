import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/data/models/account_type.dart';
import 'package:resident_app/core/data/static_datasources/type_accounts.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/ma_theme.dart';
import 'package:resident_app/core/presentation/widgets/inputs/inputs.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/pay_by_text/application/bloc/pay_by_text/pay_by_text_bloc.dart';
import 'package:resident_app/features/pay_by_text/presentation/widgets/check_info_image.dart';
import 'package:resident_app/features/pay_by_text/presentation/widgets/leading_button.dart';
import 'package:resident_app/features/pay_by_text/presentation/widgets/new_payment_account_tile.dart';
import 'package:resident_app/features/pay_by_text/routes.dart';
import 'package:resident_app/features/payment_account/application/bloc/property_payment_settings_bloc.dart';

class PayByTextNewPaymentAccountView extends StatefulWidget {
  const PayByTextNewPaymentAccountView({super.key});

  @override
  State<PayByTextNewPaymentAccountView> createState() =>
      _PayByTextNewPaymentAccountViewState();
}

class _PayByTextNewPaymentAccountViewState
    extends State<PayByTextNewPaymentAccountView> {
  late PayByTextBloc payByTextBloc;
  late bool isRBCPaymentAccount;

  //
  // Others
  //
  late List<AccountType> typeAccounts;

  //
  // Localizations
  //
  late AppLocalizations localizations;

  @override
  void initState() {
    payByTextBloc = locator<PayByTextBloc>();
    isRBCPaymentAccount =
        locator<PropertyPaymentSettingsBloc>().state.isRBCPaymentAccount;
    localizations = locator<MaLocalizations>().I;
    typeAccounts = List<AccountType>.from(
        typeAccountsData.map((st) => AccountType.fromJson(st))).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final transformationController = TransformationController();
    late TapDownDetails doubleTapDetails;
    void handleDoubleTap() {
      if (transformationController.value != Matrix4.identity()) {
        transformationController.value = Matrix4.identity();
      } else {
        final position = doubleTapDetails.localPosition;
        // For a 3x zoom
        transformationController.value = Matrix4.identity()
          ..translate(-position.dx * 2, -position.dy * 2)
          ..scale(3.0);
        // Fox a 2x zoom
        // ..translate(-position.dx, -position.dy)
        // ..scale(2.0);
      }
    }

    final textTheme = Theme.of(context).textTheme;
    final colorPalette = locator<ColorPalette>();
    return PopScope(
      canPop: true,
      onPopInvoked: (didPop) {
        context.goNamed(PayByTextRoutes.payByTextSetUp.name!);
      },
      child: Scaffold(
        backgroundColor: colorPalette.surfaceContainerLowest,
        appBar: MAAppBar(
          iconTheme: IconThemeData(
            color: colorPalette.appBarTextIcon,
          ),
          bottom: const MABottomAppBar(),
          leadingWidth: payByTextBloc.state.setUpIsCompleted ? 110 : 50,
          maAppBarType: MAAppBarType.blue,
          title: Text(
            payByTextBloc.state.setUpIsCompleted
                ? localizations.settings
                : localizations.setupPayByText,
          ),
          leading:
              payByTextBloc.state.setUpIsCompleted ? LeadingButton() : null,
          actions: [
            //TODO: Implment with the new payment account widget
            // if (payByTextBloc.state.setUpIsCompleted) ActionSaveButton()
          ],
        ),
        body: ListView(
          children: [
            RelationalPadding(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const RelationalSpace(),
                  NewPaymentAccountTile(),
                  const SizedBox(
                    height: 20,
                  ),
                  const RelationalSpace(),
                  BlocBuilder<PayByTextBloc, PayByTextState>(
                      bloc: payByTextBloc,
                      builder: (context, state) {
                        return MASelectorInputField(
                          labelText: localizations.typeOfAccount,
                          hintText: state.accountType.name == "Checking"
                              ? localizations.checking
                              : state.accountType.name,
                          initialValue: state.accountType.name == "Checking"
                              ? AccountType(
                                  name: localizations.checking, value: "CV")
                              : state.accountType,
                          menuItems: typeAccounts
                              .map(
                                (st) => MASelectorInputItem<AccountType>(
                                  value: st,
                                  label: st.name,
                                ),
                              )
                              .toList(),
                          onSelectedItem: (item) {
                            payByTextBloc
                                .add(PayByTextEvent.setAccountType(item));
                          },
                        );
                      }),
                  const RelationalSpace(),
                  BlocBuilder<PayByTextBloc, PayByTextState>(
                    bloc: payByTextBloc,
                    buildWhen: (previousState, currentState) {
                      return previousState.nameErrorMessage !=
                          currentState.nameErrorMessage;
                    },
                    builder: (context, state) {
                      return MATextFormField(
                        label: localizations.nameOnAccount,
                        hintText: localizations.typeNameExactly,
                        controller: TextEditingController(
                          text: state.name.value,
                        ),
                        onChanged: (value) => payByTextBloc.add(
                          PayByTextEvent.setName(value),
                        ),
                        onFocusExited: () => payByTextBloc.add(
                          const PayByTextEvent.validateName(),
                        ),
                        errorText: state.nameErrorMessage,
                        hasError: state.nameErrorMessage != null,
                      );
                    },
                  ),
                ],
              ),
            ),
            const RelationalSpace(),
            Container(
              decoration: BoxDecoration(color: colorPalette.surfaceBright),
              child: RelationalPadding(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'assets/information.svg',
                      fit: BoxFit.contain,
                      colorFilter: ColorFilter.mode(
                        colorPalette.textLink,
                        BlendMode.srcIn,
                      ),
                    ),
                    Flexible(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Text(
                            localizations.aboutRoutingAccount,
                            textAlign: TextAlign.center,
                            style: textTheme.hyperlink.copyWith(
                              shadows: [
                                Shadow(
                                  color: colorPalette.textLink,
                                  offset: const Offset(0, -4),
                                )
                              ],
                              decorationColor: colorPalette.textLink,
                            ),
                          ),
                          onPressed: () {
                            showModalBottomSheet<void>(
                              context: context,
                              isScrollControlled: true,
                              builder: (BuildContext context) {
                                return CheckInfoImage(
                                  transformationController:
                                      transformationController,
                                  onImageDoubleTapDown: (d) =>
                                      doubleTapDetails = d,
                                  onImageDoubleTap: handleDoubleTap,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const RelationalSpace(),
            RelationalPadding(
                child: Column(
              children: [
                if (!isRBCPaymentAccount) ...[
                  BlocBuilder<PayByTextBloc, PayByTextState>(
                    bloc: payByTextBloc,
                    buildWhen: (previousState, currentState) {
                      return previousState.routingNumberErrorMessage !=
                          currentState.routingNumberErrorMessage;
                    },
                    builder: (context, state) {
                      return MATextFormField(
                          addLetterSpacing: true,
                          label: localizations.routingNumber,
                          hintText: localizations.enterNineDigits,
                          maTextFieldType: MATextFormFieldType.normal,
                          keyboardType: TextInputType.number,
                          maxLength: maxLengthNine,
                          controller: TextEditingController(
                            text: state.routingNumber.value,
                          ),
                          onChanged: (value) => payByTextBloc.add(
                                PayByTextEvent.setRoutingNumber(value),
                              ),
                          onFocusExited: () => payByTextBloc.add(
                                const PayByTextEvent.validateRoutingNumber(),
                              ),
                          errorText: state.routingNumberErrorMessage,
                          hasError: state.routingNumberErrorMessage != null,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ]);
                    },
                  ),
                  const RelationalSpace(),
                ],
                if (isRBCPaymentAccount) ...[
                  BlocBuilder<PayByTextBloc, PayByTextState>(
                    bloc: payByTextBloc,
                    buildWhen: (previousState, currentState) {
                      return previousState.institutionNumberErrorMessage !=
                          currentState.institutionNumberErrorMessage;
                    },
                    builder: (context, state) {
                      return MATextFormField(
                          addLetterSpacing: true,
                          label: localizations.institutionNumber,
                          hintText: localizations.enterThreeDigits,
                          maTextFieldType: MATextFormFieldType.normal,
                          keyboardType: TextInputType.number,
                          maxLength: maxLengthThree,
                          controller: TextEditingController(
                            text: state.institutionNumber.value,
                          ),
                          onChanged: (value) => payByTextBloc.add(
                                PayByTextEvent.setInstitutionNumber(value),
                              ),
                          onFocusExited: () => payByTextBloc.add(
                                const PayByTextEvent
                                    .validateInstitutionNumber(),
                              ),
                          errorText: state.institutionNumberErrorMessage,
                          hasError: state.institutionNumberErrorMessage != null,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ]);
                    },
                  ),
                  const RelationalSpace(),
                  BlocBuilder<PayByTextBloc, PayByTextState>(
                    bloc: payByTextBloc,
                    buildWhen: (previousState, currentState) {
                      return previousState.transitNumberErrorMessage !=
                          currentState.transitNumberErrorMessage;
                    },
                    builder: (context, state) {
                      return MATextFormField(
                          addLetterSpacing: true,
                          label: localizations.transitNumber,
                          hintText: localizations.enterFiveDigits,
                          maTextFieldType: MATextFormFieldType.normal,
                          keyboardType: TextInputType.number,
                          maxLength: maxLengthFive,
                          controller: TextEditingController(
                            text: state.transitNumber.value,
                          ),
                          onChanged: (value) => payByTextBloc.add(
                                PayByTextEvent.setTransitNumber(value),
                              ),
                          onFocusExited: () => payByTextBloc.add(
                                const PayByTextEvent.validateTransitNumber(),
                              ),
                          errorText: state.transitNumberErrorMessage,
                          hasError: state.transitNumberErrorMessage != null,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ]);
                    },
                  ),
                  const RelationalSpace(),
                ],
                BlocBuilder<PayByTextBloc, PayByTextState>(
                  bloc: payByTextBloc,
                  buildWhen: (previousState, currentState) {
                    return previousState.accountNumberErrorMessage !=
                        currentState.accountNumberErrorMessage;
                  },
                  builder: (context, state) {
                    return MATextFormField(
                      addLetterSpacing: true,
                      label: localizations.accountNumber,
                      hintText: localizations.enterAccountNumber,
                      maxLength: maxLengthTwenty,
                      keyboardType: TextInputType.number,
                      maTextFieldType: MATextFormFieldType.normal,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      controller: TextEditingController(
                        text: state.accountNumber.value,
                      ),
                      onChanged: (value) => payByTextBloc.add(
                        PayByTextEvent.setAccountNumber(value),
                      ),
                      onFocusExited: () => payByTextBloc.add(
                        const PayByTextEvent.validateAccountNumber(),
                      ),
                      errorText: state.accountNumberErrorMessage,
                      hasError: state.accountNumberErrorMessage != null,
                    );
                  },
                ),
                const RelationalSpace(),
                BlocBuilder<PayByTextBloc, PayByTextState>(
                  bloc: payByTextBloc,
                  buildWhen: (previousState, currentState) {
                    return previousState.confirmAccountNumberErrorMessage !=
                        currentState.confirmAccountNumberErrorMessage;
                  },
                  builder: (context, state) {
                    return MATextFormField(
                      addLetterSpacing: true,
                      label: localizations.confirmAccountNumber,
                      hintText: localizations.enterAccountNumber,
                      maxLength: maxLengthTwenty,
                      keyboardType: TextInputType.number,
                      maTextFieldType: MATextFormFieldType.normal,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      controller: TextEditingController(
                        text: state.confirmAccountNumber.value,
                      ),
                      onChanged: (value) => payByTextBloc.add(
                        PayByTextEvent.setConfirmAccountNumber(value),
                      ),
                      onFocusExited: () => payByTextBloc.add(
                        const PayByTextEvent.validateConfirmAccountNumber(),
                      ),
                      errorText: state.confirmAccountNumberErrorMessage,
                      hasError: state.confirmAccountNumberErrorMessage != null,
                    );
                  },
                ),
                //TODO: Implment with the new payment account widget
                // if (!payByTextBloc.state.setUpIsCompleted)
                //   BodySetUpNotCompleted(
                //     isNewPaymentAccount: true,
                //   )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
