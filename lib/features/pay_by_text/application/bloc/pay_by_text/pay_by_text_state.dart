part of 'pay_by_text_bloc.dart';

@freezed
class PayByTextState with _$PayByTextState {
  const factory PayByTextState({
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
    @Default(MobilePhoneType.userMobilePhone) MobilePhoneType mobilePhoneType,
    @Default(false) bool setUpIsCompleted,
    @Default(null) String? nameErrorMessage,
    @Default(null) String? routingNumberErrorMessage,
    @Default(null) String? transitNumberErrorMessage,
    @Default(null) String? institutionNumberErrorMessage,
    @Default(null) String? accountNumberErrorMessage,
    @Default(null) String? confirmAccountNumberErrorMessage,
    @Default(false) bool allFieldsAreValidate,
    @Default(PhoneInput.pure()) PhoneInput mobilePhone,
    @Default(null) String? mobilePhoneErrorMessage,
    @Default(false) bool mobilePhoneIsValidate,
    PayByTextState? latestPayByTextState,
    @Default(true) bool isSetUpPayByText,
  }) = _PayByTextState;
}
