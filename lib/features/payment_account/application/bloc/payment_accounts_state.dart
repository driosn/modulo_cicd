part of 'payment_accounts_bloc.dart';

enum PaymentAccountsStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
class PaymentAccountsState with _$PaymentAccountsState {
  const factory PaymentAccountsState({
    @Default(PaymentAccounts.empty) PaymentAccounts paymentAccounts,
    @Default(PaymentAccountsStatus.initial)
    PaymentAccountsStatus paymentAccountsStatus,
    @Default(false) bool isRBCPaymentAccount,
    @Default(_Initial()) PaymentAccountsOperationStatus createStatus,
    @Default(_Initial()) PaymentAccountsOperationStatus updateStatus,
    @Default(_Initial()) PaymentAccountsOperationStatus deleteStatus,
  }) = _PaymentAccountsState;
}

@freezed
class PaymentAccountsOperationStatus with _$PaymentAccountsOperationStatus {
  const factory PaymentAccountsOperationStatus.initial() = _Initial;
  const factory PaymentAccountsOperationStatus.processing() = _Processing;
  const factory PaymentAccountsOperationStatus.success() = _Success;
  const factory PaymentAccountsOperationStatus.failure(MAError error) =
      _Failure;
}
