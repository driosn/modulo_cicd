part of 'autopay_bloc.dart';

@freezed
class AutoPayState with _$AutoPayState {
  const factory AutoPayState({
    @Default(NameInput.pure()) NameInput name,
    @Default(AccountType(name: "Checking", value: "CV"))
    AccountType accountType,
    @Default(RoutingNumberInput.pure()) RoutingNumberInput routingNumber,
    @Default(TransitNumberInput.pure()) TransitNumberInput transitNumber,
    @Default(InstitutionNumberInput.pure())
    InstitutionNumberInput institutionNumber,
    @Default(AccountNumberInput.pure()) AccountNumberInput accountNumber,
    @Default(ConfirmAccountNumberInput.pure(AccountNumberInput.pure()))
    ConfirmAccountNumberInput confirmAccountNumber,
    @Default(false) bool setUpIsCompleted,
    @Default(null) String? nameErrorMessage,
    @Default(null) String? routingNumberErrorMessage,
    @Default(null) String? transitNumberErrorMessage,
    @Default(null) String? institutionNumberErrorMessage,
    @Default(null) String? accountNumberErrorMessage,
    @Default(null) String? confirmAccountNumberErrorMessage,
    @Default(null) String? paymentType,
    @Default(false) bool allFieldsAreValidate,
    @Default(
      OptionInfo(
        name: 'First day of the month',
        value: 1,
      ),
    )
    OptionInfo paymentDate,
    @Default(WithdrawalAmountOption.fullAmount)
    WithdrawalAmountOption withdrawalAmountOption,
    @Default(DollarInput.pure(false)) DollarInput withdrawalAmount,
    @Default(null) String? withdrawalAmountErrorMessage,
    AutoPayState? latestAutopayState,
    @Default(true) bool isSetUpAutopay,
    @Default(false) bool isAutopaySettings,
    @Default(null)String? autopayId,
    @Default("")String referenceId,
    @Default("")String residentId,
    @Default("")String residentUserId,
    @Default(false) bool isLoan,
  }) = _AutoPayState;
}
