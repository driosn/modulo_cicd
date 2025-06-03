part of 'pay_by_text_bloc.dart';

@freezed
class PayByTextEvent with _$PayByTextEvent {
  //
  // Setters
  //
  const factory PayByTextEvent.configurePayByText() = _PayByTextEventConfigure;

  const factory PayByTextEvent.setName(String name) = _SetNameEvent;

  const factory PayByTextEvent.setAccountType(AccountType accountType) =
      _SetAccountTypeEvent;

  const factory PayByTextEvent.setRoutingNumber(String routingNumber) =
      _SetRoutingNumberEvent;

  const factory PayByTextEvent.setTransitNumber(String transitNumber) =
      _SetTransitNumberEvent;

  const factory PayByTextEvent.setInstitutionNumber(String institutionNumber) =
      _SetInstitutionNumberEvent;

  const factory PayByTextEvent.setAccountNumber(String accountNumber) =
      _SetAccountNumberEvent;

  const factory PayByTextEvent.setConfirmAccountNumber(
      String confirmAccountNumber) = _SetConfirmAccountNumberEvent;

  const factory PayByTextEvent.setMobilePhoneType(
      MobilePhoneType mobilePhoneType) = _SetMobilePhoneType;

  const factory PayByTextEvent.setMobilePhone(String mobilePhone) =
      _SetMobilePhoneEvent;

  const factory PayByTextEvent.setAllFieldsAreValidate() =
      _SetAllFieldsAreValidate;

  const factory PayByTextEvent.setMobilePhoneValidate() =
      _SetMobilePhoneValidate;

  const factory PayByTextEvent.setSetupIsCompleted(bool isCompleted) =
      _SetSetupIsCompletedEvent;

  const factory PayByTextEvent.setLatestPaymentAccountSettings() =
      _SetLatestPaymentAccountSettingsEvent;

  const factory PayByTextEvent.setCurrentPaymentAccountSettings() =
      _SetCurrentPaymentAccountSettings;

  const factory PayByTextEvent.resetPaymentAccountSettings() =
      _ResetPaymentAccountSettingsEvent;

  const factory PayByTextEvent.setSetupIsPayByText(bool isSetUpPayByText) =
      _SetupIsPayByText;

  //
  // Validators
  //
  const factory PayByTextEvent.validateName() = _ValidateNameEvent;

  const factory PayByTextEvent.validateRoutingNumber() =
      _ValidateRoutingNumberEvent;

  const factory PayByTextEvent.validateTransitNumber() =
      _ValidateTransitNumberEvent;

  const factory PayByTextEvent.validateInstitutionNumber() =
      _ValidateInstitutionNumberEvent;

  const factory PayByTextEvent.validateAccountNumber() =
      _ValidateAccountNumberEvent;

  const factory PayByTextEvent.validateMobilePhone() =
      _ValidateMobilePhoneEvent;

  const factory PayByTextEvent.validateConfirmAccountNumber() =
      _ValidateConfirmAccountNumberEvent;

  const factory PayByTextEvent.validateAllForm() = _ValidateAllFormEvent;
  const factory PayByTextEvent.validateAllFormRBC() = _ValidateAllFormRBCEvent;
  const factory PayByTextEvent.reset() = _ResetPayByTextEvent;
}
