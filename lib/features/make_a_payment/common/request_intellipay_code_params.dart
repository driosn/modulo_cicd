import 'package:resident_app/core/shared/common/enums/api_enums.dart';

class RequestIntelliPayCodeParams {
  const RequestIntelliPayCodeParams({
    required this.selectedSiteResidentId,
    required this.amount,
    required this.processAdditionalPayment,
    required this.referenceId,
    required this.referenceTitle,
    required this.residentId,
    required this.payTo,
    required this.paymentMethod,
  });

  final String selectedSiteResidentId;
  final double amount;
  final bool processAdditionalPayment;
  final String referenceId;
  final String referenceTitle;
  final String residentId;
  final PayToType payTo;
  final int paymentMethod;

  Map<String, dynamic> toJson() => {
        "SelectedSiteResidentId": selectedSiteResidentId,
        "Amount": amount,
        "ProcessAdditionalPayment": processAdditionalPayment,
        "ReferenceId": referenceId,
        "ReferenceTitle": referenceTitle,
        "ResidentId": residentId,
        "PayTo": payTo.when(
          rent: () => 1,
          loan: () => 2,
        ),
        "PaymentMethod": paymentMethod,
      };
}
