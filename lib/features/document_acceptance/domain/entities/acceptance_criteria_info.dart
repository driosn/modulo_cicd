import 'package:resident_app/core/shared/common/enums/api_enums.dart';

class AcceptanceCriteriaInfo {
  const AcceptanceCriteriaInfo({
    required this.residentUserId,
    required this.legalDocumentId,
    required this.legalDocumentTypeDescription,
    required this.legalDocumentType,
    required this.isAccepted,
  });

  final String residentUserId;
  final String legalDocumentId;
  final String legalDocumentTypeDescription;
  final LegalDocumentType legalDocumentType;
  final bool isAccepted;
}

enum AcceptanceDocumentType {
  termsOfService,
  privacyPolicy,
  supportedBrowsersAndOperatingSystems,
}
