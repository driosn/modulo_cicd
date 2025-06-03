part of 'language_preference_bloc.dart';

@freezed
class LanguagePreferenceEvent with _$LanguagePreferenceEvent {
  //
  // Setters
  //

  const factory LanguagePreferenceEvent.setSelectedLanguage(
    Language selectedLanguage,
  ) = _SetSelectedLanguage;
  const factory LanguagePreferenceEvent.setIsSelectedLanguage() =
      _SetIsSelectedLanguage;

  //
  // Others
  //

  const factory LanguagePreferenceEvent.update({
    required String residentUserId,
  }) = _UpdateEvent;
}
