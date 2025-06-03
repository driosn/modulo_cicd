import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:resident_app/features/whitelabel/data/datasources/whitelabel_remote_datasource.dart';
import 'package:resident_app/features/whitelabel/data/models/whitelabel_model.dart';

class WhitelabelRemoteconfigDataSource implements WhitelabelRemoteDataSource {
  const WhitelabelRemoteconfigDataSource({
    required FirebaseRemoteConfig firebaseRemoteConfig,
  }) : _remoteConfig = firebaseRemoteConfig;

  final FirebaseRemoteConfig _remoteConfig;

  @override
  Future<WhitelabelModel?> getByCorePropertyId(int corePropertyId) async {
    try {
      await _remoteConfig.fetchAndActivate();
      String key = "corePropertyId_$corePropertyId";
      var resultProperty = _remoteConfig.getString(key);
      if (resultProperty.isEmpty) {
        return null;
      } else {
        Map<String, dynamic> jsonMap = json.decode(resultProperty);
        WhitelabelModel whitelabelmodel = WhitelabelModel.fromJson(jsonMap);
        return whitelabelmodel;
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<WhitelabelModel?> getByCoreCompanyId(int coreCompanyId) async {
    try {
      await _remoteConfig.fetchAndActivate();
      String key = "coreCompanyId_$coreCompanyId";
      var resultCompany = _remoteConfig.getString(key);
      if (resultCompany.isEmpty) {
        return null;
      } else {
        Map<String, dynamic> jsonMap = json.decode(resultCompany);
        WhitelabelModel whitelabelmodel = WhitelabelModel.fromJson(jsonMap);
        return whitelabelmodel;
      }
    } catch (e) {
      rethrow;
    }
  }
}
