part of 'setup_payment_bloc.dart';

@freezed
class SetupPaymentState with _$SetupPaymentState {
  const factory SetupPaymentState({
    @Default(PaymentAmountType.currentRent) PaymentAmountType paymentAmountType,
    @Default(MPPaymentMethodType.none) paymentMethodType,
    @Default(DollarInput.pure(true)) DollarInput paymentAmount,
    @Default(null) String? paymentAmountErrorMessage,
    @Default(SetupPaymentValidationStatus.initial())
    SetupPaymentValidationStatus setupPaymentValidationStatus,
    @Default(false) bool processAdditionalPayment,
  }) = _SetupPaymentState;
}

@freezed
class SetupPaymentValidationStatus with _$SetupPaymentValidationStatus {
  const factory SetupPaymentValidationStatus.initial() = _Initial;
  const factory SetupPaymentValidationStatus.valid() = _Valid;
  const factory SetupPaymentValidationStatus.notValid() = _NotValid;
}
