import 'package:freezed_annotation/freezed_annotation.dart';

enum PaymentProcessorType {
  fundTech(1, "FundTech"),
  payNearMe(2, "PayNearMe"),
  zego(3, "Zego"),
  intelliPay(4, "IntelliPay"),
  rbc(5, "RBC"),
  unknown(6, "Unknown"),
  mobileWallet(7, "MobileWallet"),
  flex(8, "Flex"),
  googlePay(9, "GooglePay"),
  payPal(10, "PayPal"),
  venmo(11, "Venmo");

  final int id;
  final String name;

  const PaymentProcessorType(this.id, this.name);

  int get processorId => id;

  static PaymentProcessorType fromId(int id) {
    return PaymentProcessorType.values.firstWhere(
      (processor) => processor.id == id,
      orElse: () => PaymentProcessorType.unknown,
    );
  }

  @override
  String toString() {
    return name;
  }
}

enum BankAccountType {
  @JsonValue("Checking")
  checking(),
  @JsonValue("Savings")
  savings(),
  @JsonValue("Unknown")
  unknown();

  bool get isChecking => this == BankAccountType.checking;
}
