part of 'navigation_drawer_bloc.dart';

@freezed
class NavigationDrawerState with _$NavigationDrawerState {
  const factory NavigationDrawerState({
    @Default(false) bool dashboard,
    @Default(false) bool payments,
    @Default(false) bool paymentsBillsPayments,
    @Default(false) bool paymentsAutoPay,
    @Default(false) bool paymentsPayByText,
    @Default(false) bool paymentsMakePayment,
    @Default(false) bool paymentsPaymentAccount,
    @Default(false) bool paymentsBillingSettings,
    @Default(false) bool paymentsCashPay,
    @Default(false) bool announcements,
    @Default(false) bool workOrders,
    @Default(false) bool community,
    @Default(false) bool myAccount,
    @Default(false) bool myAccountLogInSettings,
    @Default(false) bool myAccountTermsOfUse,
    @Default(false) bool myAccountPrivacyPolicy,
    @Default(false) bool myAccountDeleteMyAccount,
    @Default(false) bool myAccountLegalDocuments,
    @Default(false) bool myAccountContactInfo,
    @Default(false) bool myAccountRegisterSite,
    @Default(false) bool myAccountLanguagePreference,
    @Default(false) bool help,
    @Default(false) bool helpFAQ,
  }) = _NavigationDrawerState;
}
