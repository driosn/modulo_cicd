part of 'payment_accounts_bloc.dart';

@freezed
class PaymentAccountsEvent with _$PaymentAccountsEvent {
  const factory PaymentAccountsEvent.getPaymentAccounts({
    required String residentId,
  }) = _GetPaymentAccountsEvent;
  const factory PaymentAccountsEvent.setIsRBCPaymentAccount({
    required bool isRBCPaymentAccount,
  }) = _SetIsRBCPaymentAccountEvent;
  const factory PaymentAccountsEvent.create({
    required String residentId,
    required String residentUserId,
    required NewPaymentAccount paymentAccount,
  }) = _CreatePaymentAccountsEvent;
  const factory PaymentAccountsEvent.update({
    required String residentId,
    required String residentUserId,
    required NewPaymentAccount paymentAccount,
  }) = _UpdatePaymentAccountsEvent;
  const factory PaymentAccountsEvent.deletePaymentAccounts({
    required String residentId,
  }) = _DeletePaymentAccountsEvent;
  const factory PaymentAccountsEvent.restart() = _RestartPaymentAccountsEvent;
}
