enum WithdrawalAmountOption {
  //TODO: refactor to match autopay_option enum, and use json keys instead of mapping logic
  none,
  fixedAmount,
  fullAmount,
  fullAmountWithNoExceed,
}
