class UpdateAcceptanceCriteriaParams {
  const UpdateAcceptanceCriteriaParams({
    required this.residentUserId,
    required this.legalDocumentIds,
  });

  final String residentUserId;
  final List<String> legalDocumentIds;

  Map<String, dynamic> toJson() => {
        'residentUserId': residentUserId,
        'legalDocumentIds': legalDocumentIds,
      };
}
