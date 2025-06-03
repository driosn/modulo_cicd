part of 'payment_settings_bloc.dart';

@freezed
class PaymentSettingsState with _$PaymentSettingsState {
  const factory PaymentSettingsState.initial() = _Initial;
  const factory PaymentSettingsState.loading() = _Loading;
  const factory PaymentSettingsState.success({
    @Default(false) bool displayBankAccount,
    @Default(false) bool displayCreditCard,
    @Default(false) bool displayMobileWallet,
    @Default(false) bool displayGooglePlay,
    @Default(false) bool displayPayPal,
    @Default(false) bool displayVenmo,
    @Default(false) bool isRBCPaymentAccount,
  }) = _Success;
  const factory PaymentSettingsState.failure(MAError error) = _Failure;
}
