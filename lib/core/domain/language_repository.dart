import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/data/models/language_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageRepository {
  const LanguageRepository({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  final SharedPreferences _sharedPreferences;

  Language? getSavedLanguage() {
    final result = _sharedPreferences.getString(kLanguagePrefsKey);

    if (result == null || result == "null") {
      return null;
    }
    return Language.fromString(result);
  }

  Future<void> saveLanguage(String languageName) async {
    await _sharedPreferences.setString(kLanguagePrefsKey, languageName);
  }
}
