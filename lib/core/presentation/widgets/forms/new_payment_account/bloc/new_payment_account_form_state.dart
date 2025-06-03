part of 'new_payment_account_form_bloc.dart';

@freezed
class NewPaymentAccountFormState with _$NewPaymentAccountFormState {
  const factory NewPaymentAccountFormState({
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
    @Default(false) bool allFieldsAreValid,
  }) = _NewPaymentAccountFormState;
}
