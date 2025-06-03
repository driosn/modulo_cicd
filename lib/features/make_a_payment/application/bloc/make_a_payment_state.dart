part of 'make_a_payment_bloc.dart';

@freezed
class MakeAPaymentState with _$MakeAPaymentState {
  const factory MakeAPaymentState({
    @Default(PaymentAmountType.currentRent) PaymentAmountType paymentAmountType,
    @Default(MPPaymentMethodType.checkingAccount)
    MPPaymentMethodType paymentMethodType,
    @Default(DollarInput.pure(true)) DollarInput paymentAmount,
    @Default(null) String? paymentAmountErrorMessage,
    @Default(ProcessPaymentStatus.initial)
    ProcessPaymentStatus processPaymentStatus,
    @Default(null) PaymentOption? totalRentPayment,
    @Default(null) PaymentOption? currentRentPayment,
    @Default(<PaymentOption>[]) List<PaymentOption> loanPayments,
  }) = _MakeAPaymentState;
}

extension MakeAPaymentStateExtension on MakeAPaymentState {
  bool get hasLoans => loanPayments
      .where((payment) => payment.payToType == const PayToType.loan())
      .isNotEmpty;
}
