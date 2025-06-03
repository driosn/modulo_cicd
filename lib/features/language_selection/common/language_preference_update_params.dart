class LanguagePreferenceUpdateParams {
  const LanguagePreferenceUpdateParams({
    required this.residentUserId,
    required this.notificationLanguageType,
  });

  final String residentUserId;
  final int notificationLanguageType;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'residentUserId': residentUserId,
      'notificationLanguageType': notificationLanguageType,
    };

    return data;
  }
}
