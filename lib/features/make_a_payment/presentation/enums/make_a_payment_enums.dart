enum PaymentAmountType {
  currentRent,
  totalRent,
  aDifferentAmount,
}

enum MPPaymentMethodType {
  none,
  checkingAccount,
  creditCard,
  mobileWallet,
}

enum ProcessPaymentStatus {
  initial,
  processing,
  success,
  failure,
}
