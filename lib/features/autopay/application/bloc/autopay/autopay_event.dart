part of 'autopay_bloc.dart';

@freezed
class AutoPayEvent with _$AutoPayEvent {
  //
  // Setters
  //
  const factory AutoPayEvent.configureAutoPay() = _AutoPayEventConfigure;

  const factory AutoPayEvent.setName(String name) = _SetNameEvent;
  const factory AutoPayEvent.setAutopayId(String? autopayId, String referenceId, String residentId, String residentUserId) = _SetAutopayIdEvent;

  const factory AutoPayEvent.setAccountType(AccountType accountType) =
      _SetAccountTypeEvent;

  const factory AutoPayEvent.setRoutingNumber(String routingNumber) =
      _SetRoutingNumberEvent;

  const factory AutoPayEvent.setTransitNumber(String transitNumber) =
      _SetTransitNumberEvent;

  const factory AutoPayEvent.setInstitutionNumber(String institutionNumber) =
      _SetInstitutionNumberEvent;

  const factory AutoPayEvent.setAccountNumber(String accountNumber) =
      _SetAccountNumberEvent;

  const factory AutoPayEvent.setConfirmAccountNumber(
      String confirmAccountNumber) = _SetConfirmAccountNumberEvent;

  const factory AutoPayEvent.setPaymentDate(OptionInfo paymentDate) =
      _SetPaymentDateEvent;

  const factory AutoPayEvent.setAllFieldsAreValidate() =
      _SetAllFieldsAreValidate;

  const factory AutoPayEvent.setWithdrawalAmountOption(
          WithdrawalAmountOption withdrawalAmountOption) =
      _SetWithdrawalAmountOptionEvent;

  const factory AutoPayEvent.setWithdrawalAmount(String amount) =
      _SetWithdrawalAmountEvent;

  const factory AutoPayEvent.setSetupIsCompleted(bool isCompleted) =
      _SetSetupIsCompletedEvent;

  const factory AutoPayEvent.setLatestPaymentAccountSettings() =
      _SetLatestPaymentAccountSettingsEvent;
  const factory AutoPayEvent.setCurrentPaymentAccountSettings() =
      _SetCurrentPaymentAccountSettings;
  const factory AutoPayEvent.resetPaymentAccountSettings() =
      _ResetPaymentAccountSettingsEvent;

  const factory AutoPayEvent.setSetupIsAutopay(bool isSetUpAutopay) =
      _SetupIsAutopay;

  const factory AutoPayEvent.setIsAutopaySettings(bool isAutopaySettings) =
      _SetIsAutopaySettings;

  const factory AutoPayEvent.setPaymentTypeAutopaySettingsEventString (String? paymentType) =
      _SetPaymentTypeAutopaySettingsEvent;

  //
  // Validators
  //
  const factory AutoPayEvent.validateName() = _ValidateNameEvent;

  const factory AutoPayEvent.validateRoutingNumber() =
      _ValidateRoutingNumberEvent;

  const factory AutoPayEvent.validateTransitNumber() =
      _ValidateTransitNumberEvent;

  const factory AutoPayEvent.validateInstitutionNumber() =
      _ValidateInstitutionNumberEvent;

  const factory AutoPayEvent.validateAccountNumber() =
      _ValidateAccountNumberEvent;

  const factory AutoPayEvent.validateConfirmAccountNumber() =
      _ValidateConfirmAccountNumberEvent;

  const factory AutoPayEvent.validateAllForm() = _ValidateAllFormEvent;
  const factory AutoPayEvent.validateAllFormRBC() = _ValidateAllFormRBCEvent;
  const factory AutoPayEvent.validateWithdrawalAmountForm() =
      _ValidateWithdrawalAmountFormEvent;
  const factory AutoPayEvent.startLoanPath(bool isLoan) = _StartLoanPathEvent;
}
