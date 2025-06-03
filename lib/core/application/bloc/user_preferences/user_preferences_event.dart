part of 'user_preferences_bloc.dart';

@freezed
class UserPreferencesEvent with _$UserPreferencesEvent {
  const factory UserPreferencesEvent.loadLanguage() =
      UserPreferencesEventLoadLanguage;
  const factory UserPreferencesEvent.setLanguage({
    required Language selectedLanguage,
    required bool setStorageLanguage,
    required VoidCallback onLanguageSet,
  }) = UserPreferencesEventSetLanguage;
  const factory UserPreferencesEvent.restart() = UserPreferencesEventRestart;
}
