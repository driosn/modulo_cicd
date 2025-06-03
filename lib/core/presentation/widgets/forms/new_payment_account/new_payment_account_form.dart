import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/data/models/account_type.dart';
import 'package:resident_app/core/data/static_datasources/type_accounts.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/ma_theme.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/forms/new_payment_account/bloc/new_payment_account_form_bloc.dart';
import 'package:resident_app/core/presentation/widgets/forms/new_payment_account/entities/new_payment_account.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_selector_input_field.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_textformfield.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/helpers/svg_color_mapped.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/presentation/widgets/check_info_image.dart';
import 'package:resident_app/features/autopay/presentation/widgets/site_address.dart';
import 'package:resident_app/features/payment_account/application/bloc/payment_accounts_bloc.dart';
import 'package:resident_app/features/register_site/presentation/widgets/ma_bottom_safe_spacing.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';

export 'package:resident_app/core/presentation/widgets/forms/new_payment_account/entities/new_payment_account.dart';

class NewPaymentAccountForm extends StatefulWidget {
  const NewPaymentAccountForm({
    super.key,
    required this.isCreate,
    required NewPaymentAccountFormBloc newPaymentAccountFormBloc,
    required this.onCancelPressed,
    required this.onAccountSaved,
  }) : _newPaymentAccountFormBloc = newPaymentAccountFormBloc;

  final bool isCreate;
  final NewPaymentAccountFormBloc _newPaymentAccountFormBloc;
  final VoidCallback onCancelPressed;
  final Function(NewPaymentAccount account) onAccountSaved;

  @override
  State<NewPaymentAccountForm> createState() => _NewPaymentAccountFormState();
}

class _NewPaymentAccountFormState extends State<NewPaymentAccountForm> {
  late SiteBloc _siteBloc;
  late PaymentAccountsBloc _paymentAccountsBloc;
  late List<AccountType> typeAccounts;
  late NewPaymentAccountFormBloc newPaymentAccountFormBloc;
  late bool isRBCPaymentAccount;

  @override
  void initState() {
    super.initState();
    _siteBloc = locator<SiteBloc>();
    _paymentAccountsBloc = locator<PaymentAccountsBloc>();
    typeAccounts = List<AccountType>.from(
      typeAccountsData.map(
        (st) => AccountType.fromJson(st),
      ),
    ).toList();
    isRBCPaymentAccount = _paymentAccountsBloc.state.isRBCPaymentAccount;
    newPaymentAccountFormBloc = widget._newPaymentAccountFormBloc;
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

    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;
    final textTheme = Theme.of(context).textTheme;
    return ListView(
      children: [
        RelationalPadding(
          child: Column(
            children: [
              MASpacing.xxl(),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  widget.isCreate
                      ? localizations.newPaymentAccount
                      : localizations.changePaymentAccount,
                  textAlign: TextAlign.left,
                  style: textTheme.titleLarge,
                ),
              ),
              MASpacing.xxl(),
              if (!widget.isCreate)
                Column(
                  children: [
                    BlocBuilder<SiteBloc, SiteState>(
                      bloc: _siteBloc,
                      builder: (context, state) {
                        return SiteAddress(
                          site: state.selectedSite,
                          iconColor: colorPalette.iconBaseTextIcon,
                          textColor: colorPalette.textBase,
                          onTap: () {
                            //TODO: This comment is to implement the site selector drawer
                            // if (_userBloc.state.user.associatedSites.isNotEmpty) {
                            //   _openSiteSelectorDrawer.value = true;
                            //   _openDrawer();
                            // }
                          },
                        );
                      },
                    ),
                    MASpacing.s(),
                    Divider(
                      color: colorPalette.primary300,
                    ),
                  ],
                ),
              MASpacing.l(),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.isCreate
                      ? localizations.addCheckingSavingsAccount
                      : localizations.updateCheckingSavingsAccount,
                  style: textTheme.bodyMedium,
                ),
              ),
              MASpacing.xxl(),
              BlocBuilder<NewPaymentAccountFormBloc,
                  NewPaymentAccountFormState>(
                bloc: newPaymentAccountFormBloc,
                builder: (context, state) {
                  return MASelectorInputField(
                    labelText: localizations.typeOfAccount,
                    hintText: state.accountType.name == "Checking"
                        ? localizations.checking
                        : state.accountType.name,
                    initialValue: state.accountType.name == "Checking"
                        ? AccountType(name: localizations.checking, value: "CV")
                        : state.accountType,
                    menuItems: typeAccounts
                        .map((st) => MASelectorInputItem<AccountType>(
                            value: st, label: st.name))
                        .toList(),
                    onSelectedItem: (item) {
                      newPaymentAccountFormBloc.add(
                        NewPaymentAccountFormEvent.setAccountType(item),
                      );
                    },
                  );
                },
              ),
              MASpacing.s(),
              BlocBuilder<NewPaymentAccountFormBloc,
                  NewPaymentAccountFormState>(
                bloc: newPaymentAccountFormBloc,
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
                    onChanged: (value) => newPaymentAccountFormBloc.add(
                      NewPaymentAccountFormEvent.setName(value),
                    ),
                    onFocusExited: () => newPaymentAccountFormBloc.add(
                      const NewPaymentAccountFormEvent.validateName(),
                    ),
                    errorText: state.nameErrorMessage,
                    hasError: state.nameErrorMessage != null,
                  );
                },
              ),
            ],
          ),
        ),
        MASpacing.s(),
        Container(
          decoration: BoxDecoration(
            color: colorPalette.surfaceBright,
          ),
          child: RelationalPadding(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture(
                  SvgAssetLoader(
                    'assets/information.svg',
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
                        style: Theme.of(context).textTheme.hyperlink.copyWith(
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
                              onImageDoubleTapDown: (d) => doubleTapDetails = d,
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
        MASpacing.s(),
        RelationalPadding(
          child: Column(
            children: [
              if (!isRBCPaymentAccount) ...[
                BlocBuilder<NewPaymentAccountFormBloc,
                    NewPaymentAccountFormState>(
                  bloc: newPaymentAccountFormBloc,
                  buildWhen: (previousState, currentState) {
                    return previousState.routingNumberErrorMessage !=
                        currentState.routingNumberErrorMessage;
                  },
                  builder: (context, state) {
                    return MATextFormField(
                      label: localizations.routingNumber,
                      hintText: localizations.enterNineDigits,
                      maTextFieldType: MATextFormFieldType.normal,
                      keyboardType: TextInputType.number,
                      maxLength: 9,
                      controller: TextEditingController(
                        text: state.routingNumber.value,
                      ),
                      onChanged: (value) => newPaymentAccountFormBloc.add(
                        NewPaymentAccountFormEvent.setRoutingNumber(value),
                      ),
                      onFocusExited: () => newPaymentAccountFormBloc.add(
                        const NewPaymentAccountFormEvent
                            .validateRoutingNumber(),
                      ),
                      errorText: state.routingNumberErrorMessage,
                      hasError: state.routingNumberErrorMessage != null,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    );
                  },
                ),
                MASpacing.s(),
              ],
              if (isRBCPaymentAccount) ...[
                BlocBuilder<NewPaymentAccountFormBloc,
                    NewPaymentAccountFormState>(
                  bloc: newPaymentAccountFormBloc,
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
                      onChanged: (value) => newPaymentAccountFormBloc.add(
                        NewPaymentAccountFormEvent.setInstitutionNumber(value),
                      ),
                      onFocusExited: () => newPaymentAccountFormBloc.add(
                        const NewPaymentAccountFormEvent
                            .validateInstitutionNumber(),
                      ),
                      errorText: state.institutionNumberErrorMessage,
                      hasError: state.institutionNumberErrorMessage != null,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    );
                  },
                ),
                MASpacing.s(),
                BlocBuilder<NewPaymentAccountFormBloc,
                    NewPaymentAccountFormState>(
                  bloc: newPaymentAccountFormBloc,
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
                      onChanged: (value) => newPaymentAccountFormBloc.add(
                        NewPaymentAccountFormEvent.setTransitNumber(value),
                      ),
                      onFocusExited: () => newPaymentAccountFormBloc.add(
                        const NewPaymentAccountFormEvent
                            .validateTransitNumber(),
                      ),
                      errorText: state.transitNumberErrorMessage,
                      hasError: state.transitNumberErrorMessage != null,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    );
                  },
                ),
                MASpacing.s(),
              ],
              BlocBuilder<NewPaymentAccountFormBloc,
                  NewPaymentAccountFormState>(
                bloc: newPaymentAccountFormBloc,
                buildWhen: (previousState, currentState) {
                  return previousState.accountNumberErrorMessage !=
                      currentState.accountNumberErrorMessage;
                },
                builder: (context, state) {
                  return MATextFormField(
                    label: localizations.accountNumber,
                    hintText: localizations.enterAccountNumber,
                    maxLength: 20,
                    keyboardType: TextInputType.number,
                    maTextFieldType: MATextFormFieldType.normal,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    controller: TextEditingController(
                      text: state.accountNumber.value,
                    ),
                    onChanged: (value) => newPaymentAccountFormBloc.add(
                      NewPaymentAccountFormEvent.setAccountNumber(value),
                    ),
                    onFocusExited: () => newPaymentAccountFormBloc.add(
                      const NewPaymentAccountFormEvent.validateAccountNumber(),
                    ),
                    errorText: state.accountNumberErrorMessage,
                    hasError: state.accountNumberErrorMessage != null,
                  );
                },
              ),
              MASpacing.s(),
              BlocBuilder<NewPaymentAccountFormBloc,
                  NewPaymentAccountFormState>(
                bloc: newPaymentAccountFormBloc,
                buildWhen: (previousState, currentState) {
                  return previousState.confirmAccountNumberErrorMessage !=
                      currentState.confirmAccountNumberErrorMessage;
                },
                builder: (context, state) {
                  return MATextFormField(
                    label: localizations.confirmAccountNumber,
                    hintText: localizations.enterAccountNumber,
                    maxLength: 20,
                    keyboardType: TextInputType.number,
                    maTextFieldType: MATextFormFieldType.normal,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    controller: TextEditingController(
                      text: state.confirmAccountNumber.value,
                    ),
                    onChanged: (value) => newPaymentAccountFormBloc.add(
                      NewPaymentAccountFormEvent.setConfirmAccountNumber(value),
                    ),
                    onFocusExited: () => newPaymentAccountFormBloc.add(
                      const NewPaymentAccountFormEvent
                          .validateConfirmAccountNumber(),
                    ),
                    errorText: state.confirmAccountNumberErrorMessage,
                    hasError: state.confirmAccountNumberErrorMessage != null,
                  );
                },
              ),
              Column(
                children: [
                  MASpacing.xxl(),
                  MASpacing.s(),
                  MAElevatedButton.secondary(
                    text: localizations.cancelSetup,
                    onPressed: widget.onCancelPressed,
                  ),
                  MASpacing.l(),
                  BlocListener<NewPaymentAccountFormBloc,
                      NewPaymentAccountFormState>(
                    bloc: newPaymentAccountFormBloc,
                    listener: (context, state) {
                      if (state.allFieldsAreValid) {
                        widget.onAccountSaved(
                          NewPaymentAccount(
                            type: state.accountType,
                            name: state.name.value,
                            routingNumber: state.routingNumber.value,
                            institutionNumber: state.institutionNumber.value,
                            transitNumber: state.transitNumber.value,
                            number: state.accountNumber.value,
                          ),
                        );
                      }
                    },
                    child: MAElevatedButton.primary(
                      text: widget.isCreate
                          ? localizations.saveAccount.toUpperCase()
                          : localizations.saveChanges.toUpperCase(),
                      onPressed: () {
                        newPaymentAccountFormBloc.add(
                          isRBCPaymentAccount
                              ? const NewPaymentAccountFormEvent
                                  .validateAllFormRBC()
                              : const NewPaymentAccountFormEvent
                                  .validateAllForm(),
                        );
                      },
                    ),
                  ),
                ],
              ),
              MASpacing.bottomPadding(),
              MABottomSafeSpacing(
                context: context,
              )
            ],
          ),
        ),
      ],
    );
  }
}
