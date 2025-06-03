part of 'language_preference_bloc.dart';

@freezed
class LanguagePreferenceState with _$LanguagePreferenceState {
  const factory LanguagePreferenceState({
    @Default(Language.english) Language selectedLanguage,
    @Default(_Initial()) LanguagePreferenceUpdateStatus updateStatus,
    @Default(false) bool isLanguageSelected,
  }) = _LanguagePreferenceState;
}

extension XlanguagePreferenceState on LanguagePreferenceState {
  bool get isEnglish => selectedLanguage == Language.english;
}

@freezed
class LanguagePreferenceUpdateStatus with _$LanguagePreferenceUpdateStatus {
  const factory LanguagePreferenceUpdateStatus.initial() = _Initial;
  const factory LanguagePreferenceUpdateStatus.updating() = _Updating;
  const factory LanguagePreferenceUpdateStatus.success() = _Success;
  const factory LanguagePreferenceUpdateStatus.failure(MAError error) =
      _Failure;
}
