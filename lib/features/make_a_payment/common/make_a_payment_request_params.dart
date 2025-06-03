import 'package:resident_app/core/shared/common/enums/api_enums.dart';

class MakeAPaymentRequestParams {
  const MakeAPaymentRequestParams({
    required this.amount,
    required this.payToType,
    required this.processAdditionalPayment,
    required this.referenceId,
    required this.referenceTitle,
    required this.residentId,
    required this.residentUserId,
  });

  final double amount;
  final PayToType payToType;
  final bool processAdditionalPayment;
  final String referenceId;
  final String referenceTitle;
  final String residentId;
  final String residentUserId;

  Map<String, dynamic> toJson() => {
        'Amount': amount,
        'PayToType': PayToType.toInt(payToType),
        'ProcessAdditionalPayment': processAdditionalPayment,
        'ReferenceId': referenceId,
        'ReferenceTitle': referenceTitle,
        'ResidentId': residentId,
        'ResidentUserId': residentUserId,
      };
}
