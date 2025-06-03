part of 'navigation_drawer_bloc.dart';

@freezed
class NavigationDrawerEvent with _$NavigationDrawerEvent {
  const factory NavigationDrawerEvent.dashboard() =
      NavigationDrawerEventDashboard;
  const factory NavigationDrawerEvent.payments() =
      NavigationDrawerEventPayments;
  const factory NavigationDrawerEvent.paymentsBillsPayments() =
      NavigationDrawerEventPaymentsBillsPayments;
  const factory NavigationDrawerEvent.paymentsAutoPay() =
      NavigationDrawerEventPaymentsAutoPay;
  const factory NavigationDrawerEvent.paymentsPayByText() =
      NavigationDrawerEventPaymentsPayByText;
  const factory NavigationDrawerEvent.paymentsMakePayment() =
      NavigationDrawerEventPaymentsMakePayment;
  const factory NavigationDrawerEvent.paymentsPaymentAccount() =
      NavigationDrawerEventPaymentsPaymentAccount;
  const factory NavigationDrawerEvent.paymentsBillingSettings() =
      NavigationDrawerEventPaymentsBillingSettings;
  const factory NavigationDrawerEvent.paymentsCashPay() =
      NavigationDrawerEventPaymentsCashPay;
  const factory NavigationDrawerEvent.announcements() =
      NavigationDrawerEventAnnouncements;
  const factory NavigationDrawerEvent.community() =
      NavigationDrawerEventCommunity;
  const factory NavigationDrawerEvent.myAccount() =
      NavigationDrawerEventMyAccount;


  const factory NavigationDrawerEvent.deleteMyAccount() =
  NavigationDrawerEventdeleteMyAccount;
  const factory NavigationDrawerEvent.myAccountLogInSettings() =
      NavigationDrawerEventMyAccountLogInSettings;
  const factory NavigationDrawerEvent.myAccountContactInfo() =
      NavigationDrawerEventMyAccountContactInfo;
  const factory NavigationDrawerEvent.myAccountTermsOfUse() =
      NavigationDrawerEventMyAccountTermsOfUse;
  const factory NavigationDrawerEvent.myAccountLegalDocuments() =
      NavigationDrawerEventMyAccountLegalDocuments;
  const factory NavigationDrawerEvent.myAccountPrivacyPolicy() =
      NavigationDrawerEventMyAccountPrivacyPolicy;
  const factory NavigationDrawerEvent.myAccountRegisterSite() =
      NavigationDrawerEventMyAccountRegisterSite;
  const factory NavigationDrawerEvent.myAccountLanguagePreference() =
      NavigationDrawerEventMyAccountLanguagePreference;
  const factory NavigationDrawerEvent.helpFAQ() = NavigationDrawerEventHelpFAQ;
  const factory NavigationDrawerEvent.restart() = NavigationDrawerEventRestart;
}
