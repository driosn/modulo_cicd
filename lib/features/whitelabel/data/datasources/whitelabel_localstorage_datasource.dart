import 'dart:convert';

import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/features/whitelabel/data/datasources/whitelabel_local_datasource.dart';
import 'package:resident_app/features/whitelabel/data/models/whitelabel_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WhitelabelLocalstorageDataSource implements WhitelabelLocalDataSource {
  const WhitelabelLocalstorageDataSource({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  final SharedPreferences _sharedPreferences;

  @override
  Future<WhitelabelModel?> getWhiteLabelSettings() async {
    final result = _sharedPreferences.getString(kWhitelabelSettingsKey);

    if (result == null || result == "null") {
      return null;
    }
    Map<String, dynamic> jsonMap = json.decode(result);
    return WhitelabelModel.fromJson(jsonMap);
  }

  @override
  Future<void> setWhiteLabelSettings(WhitelabelModel whitelabelSettings) async {
    await _sharedPreferences.setString(
      kWhitelabelSettingsKey,
      jsonEncode(whitelabelSettings.toJson()),
    );    
  }

  @override
  Future<void> resetWhiteLabel() async {
    await _sharedPreferences.remove(kWhitelabelSettingsKey);
  }
}
