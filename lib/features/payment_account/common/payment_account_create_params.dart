import 'package:resident_app/core/data/models/account_type.dart';
import 'package:resident_app/core/presentation/widgets/forms/new_payment_account/entities/new_payment_account.dart';
import 'package:resident_app/features/payment_account/enums/payment_account.dart';

class PaymentAccountsCreateParams {
  const PaymentAccountsCreateParams({
    required this.residentId,
    required this.residentUserId,
    required this.newPaymentAccount,
  });

  final String residentId;
  final String residentUserId;
  final NewPaymentAccount newPaymentAccount;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      "ResidentId": residentId,
      "ResidentUserId": residentUserId,
      "paymentProcessorType": PaymentProcessorType.intelliPay.processorId,
      "nameOnAccount": newPaymentAccount.name,
      "accountType": newPaymentAccount.type.accountType,
      "routingNumber": newPaymentAccount.routingNumber.isEmpty
          ? null
          : newPaymentAccount.routingNumber,
      "bankNumber": newPaymentAccount.institutionNumber.isEmpty
          ? null
          : newPaymentAccount.institutionNumber,
      "transitNumber": newPaymentAccount.transitNumber.isEmpty
          ? null
          : newPaymentAccount.transitNumber,
      "accountNumber": newPaymentAccount.number,
      "paymentAccountId": null
    };

    return data;
  }
}
