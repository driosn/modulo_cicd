part of 'new_payment_account_form_bloc.dart';

@freezed
class NewPaymentAccountFormEvent with _$NewPaymentAccountFormEvent {
  //
  // Setters
  //
  const factory NewPaymentAccountFormEvent.setName(String name) = _SetNameEvent;
  const factory NewPaymentAccountFormEvent.setAccountType(
      AccountType accountType) = _SetAccountTypeEvent;

  const factory NewPaymentAccountFormEvent.setRoutingNumber(
      String routingNumber) = _SetRoutingNumberEvent;

  const factory NewPaymentAccountFormEvent.setTransitNumber(
      String transitNumber) = _SetTransitNumberEvent;

  const factory NewPaymentAccountFormEvent.setInstitutionNumber(
      String institutionNumber) = _SetInstitutionNumberEvent;

  const factory NewPaymentAccountFormEvent.setAccountNumber(
      String accountNumber) = _SetAccountNumberEvent;

  const factory NewPaymentAccountFormEvent.setConfirmAccountNumber(
      String confirmAccountNumber) = _SetConfirmAccountNumberEvent;

  const factory NewPaymentAccountFormEvent.setPaymentDate(
      OptionInfo paymentDate) = _SetPaymentDateEvent;
  const factory NewPaymentAccountFormEvent.setRoutingNumberError({
    required String message,
  }) = _SetRoutingNumberErrorEvent;
  //
  // Validators
  //
  const factory NewPaymentAccountFormEvent.validateName() = _ValidateNameEvent;

  const factory NewPaymentAccountFormEvent.validateRoutingNumber() =
      _ValidateRoutingNumberEvent;

  const factory NewPaymentAccountFormEvent.validateTransitNumber() =
      _ValidateTransitNumberEvent;

  const factory NewPaymentAccountFormEvent.validateInstitutionNumber() =
      _ValidateInstitutionNumberEvent;

  const factory NewPaymentAccountFormEvent.validateAccountNumber() =
      _ValidateAccountNumberEvent;

  const factory NewPaymentAccountFormEvent.validateConfirmAccountNumber() =
      _ValidateConfirmAccountNumberEvent;

  const factory NewPaymentAccountFormEvent.validateAllForm() =
      _ValidateAllFormEvent;

  const factory NewPaymentAccountFormEvent.validateAllFormRBC() =
      _ValidateAllFormRBCEvent;

  const factory NewPaymentAccountFormEvent.resetPaymentAccountSettings() =
      _ResetPaymentAccountSettingsEvent;
}
