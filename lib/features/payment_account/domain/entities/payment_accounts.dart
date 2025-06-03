import 'package:resident_app/features/payment_account/enums/payment_account.dart';

class PaymentAccounts {
  const PaymentAccounts({
    required this.paymentAccountId,
    required this.paymentProcessor,
    required this.bankAccountOption,
    required this.bankRoutingNumber,
    required this.bankAccountEnding,
    required this.maskedBankAccountNumber,
    required this.creditCardEnding,
    required this.maskedCreditCardAccountNumber,
  });

  static const empty = PaymentAccounts(
    paymentAccountId: '',
    paymentProcessor: PaymentProcessor.empty,
    bankAccountOption: BankAccountOption.empty,
    bankRoutingNumber: '',
    bankAccountEnding: '',
    maskedBankAccountNumber: '',
    creditCardEnding: '',
    maskedCreditCardAccountNumber: '',
  );

  final String paymentAccountId;
  final PaymentProcessor paymentProcessor;
  final BankAccountOption bankAccountOption;
  final String bankRoutingNumber;
  final String bankAccountEnding;
  final String maskedBankAccountNumber;
  final String creditCardEnding;
  final String maskedCreditCardAccountNumber;
}

class PaymentProcessor {
  const PaymentProcessor({
    required this.paymentProcessorType,
    required this.paymentProcessorTypeDescription,
  });

  static const empty = PaymentProcessor(
    paymentProcessorType: '',
    paymentProcessorTypeDescription: '',
  );

  final String paymentProcessorType;
  final String paymentProcessorTypeDescription;
}

class BankAccountOption {
  const BankAccountOption({
    required this.bankAccountType,
    required this.bankAccountTypeDescription,
  });

  static const empty = BankAccountOption(
    bankAccountType: BankAccountType.unknown,
    bankAccountTypeDescription: '',
  );

  final BankAccountType bankAccountType;
  final String bankAccountTypeDescription;
}
