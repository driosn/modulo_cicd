part of 'setup_payment_bloc.dart';

@freezed
class SetupPaymentEvent with _$SetupPaymentEvent {
  const factory SetupPaymentEvent.setAmount(String amount) = _SetAmount;
  const factory SetupPaymentEvent.setPaymentAmountType(
      PaymentAmountType paymentAmountType) = _SetPaymentAmountType;
  const factory SetupPaymentEvent.setPaymentMethodType(
      MPPaymentMethodType paymentMethodType) = _SetPaymentMethodType;
  const factory SetupPaymentEvent.validateSetupPayment({
    required bool processAdditionalPayment,
  }) = _ValidateSetupPayment;
}
