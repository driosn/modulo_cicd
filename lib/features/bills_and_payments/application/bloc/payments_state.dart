part of 'payments_bloc.dart';

enum PaymentsStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
class PaymentsState with _$PaymentsState {
  const factory PaymentsState({
    @Default(Payments.empty) Payments paymentHistory,
    @Default(PaymentsStatus.initial) PaymentsStatus paymentsStatus,
  }) = _PaymentsState;
}
