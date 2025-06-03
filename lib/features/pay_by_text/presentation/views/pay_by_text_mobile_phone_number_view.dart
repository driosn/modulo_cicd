import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_textformfield.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/shared/helpers/string_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/pay_by_text/application/bloc/pay_by_text/pay_by_text_bloc.dart';
import 'package:resident_app/features/pay_by_text/presentation/enums/mobile_number_enums.dart';
import 'package:resident_app/features/pay_by_text/presentation/widgets/pay_by_text_cancel_dialog.dart';
import 'package:resident_app/features/pay_by_text/presentation/widgets/pay_by_text_mobile_phone_number.dart';
import 'package:resident_app/features/pay_by_text/routes.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class PayByTextMobilePhoneNumberView extends StatefulWidget {
  const PayByTextMobilePhoneNumberView({super.key});

  @override
  State<PayByTextMobilePhoneNumberView> createState() =>
      _PayByTextMobilePhoneNumberViewState();
}

class _PayByTextMobilePhoneNumberViewState
    extends State<PayByTextMobilePhoneNumberView> {
  //
  // Bloc
  //
  late PayByTextBloc _payByTextBloc;
  late UserBloc _userBloc;
  late TextEditingController _cellPhoneController;
  final ValueNotifier<bool> _authorizedPaymentNotifier =
      ValueNotifier<bool>(false);
  late String userMobilePhone;

  final _localizations = locator<MaLocalizations>().I;

  @override
  void initState() {
    _payByTextBloc = locator<PayByTextBloc>();
    _userBloc = locator<UserBloc>();
    _cellPhoneController = TextEditingController();
    userMobilePhone = _userBloc.state.user.primarySite.resident.cellPhone
        .formatMobileNumber();
    if (userMobilePhone.isNotEmpty &&
        _payByTextBloc.state.mobilePhoneType !=
            MobilePhoneType.aDifferentMobilePhone) {
      _payByTextBloc.add(
        const PayByTextEvent.setMobilePhoneType(
            MobilePhoneType.userMobilePhone),
      );
      _payByTextBloc.add(
        PayByTextEvent.setMobilePhone(userMobilePhone),
      );
    }
    super.initState();
  }

  @override
  void dispose() {
    _authorizedPaymentNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final textTheme = Theme.of(context).textTheme;
    final theme = Theme.of(context);
    //TODO: Ticket RMST-905: Pay by Text | Landing Screen States -> Retrieve the user payment account from API to replace hasPaymentAccount value as it was implementes in Autopay
    bool hasPaymentAccount = true;
    return PopScope(
      canPop: false,
      //TODO: Migrate deprecated method
      onPopInvoked: (didPop) {
        //TODO: Ticket RMST-905: Pay by Text | Landing Screen States -> Retrieve the user payment account from API to replace hasPaymentAccount value as it was implementes in Autopay
        hasPaymentAccount
            ? context
                .goNamed(PayByTextRoutes.payByTextPaymentAccountCardView.name!)
            : context.goNamed(PayByTextRoutes.payByTextNewPaymentAccount.name!);
      },
      child: Scaffold(
        backgroundColor: colorPalette.surfaceContainerLowest,
        appBar: MAAppBar(
          bottom: const MABottomAppBar(),
          maAppBarType: MAAppBarType.blue,
          iconTheme: IconThemeData(
            color: colorPalette.appBarTextIcon,
          ),
          title: Text(
            _localizations.setupPayByText,
            style: textTheme.titleSmall!.copyWith(
              color: colorPalette.appBarTextIcon,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: RelationalPadding(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const RelationalSpace(),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        _localizations.mobilePhoneNumber,
                        style: theme.textTheme.titleLarge,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        _localizations.whatNumberShouldWeSend,
                        textAlign: TextAlign.start,
                        style: theme.textTheme.bodyMedium,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      userMobilePhone.isNotEmpty
                          ? PayByTextMobilePhoneNumber(
                              userMobilePhone: userMobilePhone,
                            )
                          : BlocBuilder<PayByTextBloc, PayByTextState>(
                              bloc: _payByTextBloc,
                              buildWhen: (previousState, currentState) {
                                return previousState.mobilePhoneErrorMessage !=
                                    currentState.mobilePhoneErrorMessage;
                              },
                              builder: (context, state) {
                                return MATextFormField.phoneNumber(
                                  initialValue: state.mobilePhone.value,
                                  controller: _cellPhoneController,
                                  onChanged: (value) {
                                    _payByTextBloc.add(
                                      PayByTextEvent.setMobilePhone(value),
                                    );
                                  },
                                  onFocusExited: () => _payByTextBloc.add(
                                    const PayByTextEvent.validateMobilePhone(),
                                  ),
                                  hintText: _localizations.phoneNumberHint,
                                  label: _localizations.enterMobileNumber,
                                  errorText: state.mobilePhoneErrorMessage,
                                  hasError:
                                      state.mobilePhoneErrorMessage != null,
                                );
                              },
                            ),
                      const RelationalSpace(),
                      const SizedBox(
                        height: 24,
                      ),
                      MAElevatedButton.secondary(
                        text: _localizations.cancelSetup,
                        onPressed: () {
                          const PayByTextCancelDialog().showDialog(context);
                        },
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      BlocListener<PayByTextBloc, PayByTextState>(
                        bloc: _payByTextBloc,
                        listener: (context, state) {
                          if (state.mobilePhoneIsValidate) {
                            _payByTextBloc.add(
                              const PayByTextEvent.setMobilePhoneValidate(),
                            );
                            context.goNamed(
                              PayByTextRoutes.debitAutorization.name!,
                            );
                          }
                        },
                        child: MAElevatedButton.primary(
                          text: _localizations.nextButton.toUpperCase(),
                          onPressed: () {
                            _payByTextBloc.add(
                              const PayByTextEvent.validateMobilePhone(),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
