part of 'user_preferences_bloc.dart';

enum LanguageSelectionStatus {
  initial,
  languageSelected,
  noPreference,
  loaded,
}

extension XLanguageSelectionStatus on LanguageSelectionStatus {
  bool get isNoPreference => this == LanguageSelectionStatus.noPreference || this == LanguageSelectionStatus.initial;
}

@freezed
class UserPreferencesState with _$UserPreferencesState {
  const factory UserPreferencesState({
    @Default(Language.english) Language selectedLanguage,
    @Default(LanguageSelectionStatus.initial)
    LanguageSelectionStatus languageSelectionStatus,
  }) = _UserPreferencesState;
}
