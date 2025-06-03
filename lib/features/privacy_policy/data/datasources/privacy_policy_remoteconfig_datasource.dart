import 'dart:convert';
import 'dart:ui';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:resident_app/core/data/models/document_model.dart';
import 'package:resident_app/features/privacy_policy/data/datasources/privacy_policy_remote_datasource.dart';

class PrivacyPolicyRemoteConfigDataSource
    implements PrivacyPolicyRemoteDataSource {
  const PrivacyPolicyRemoteConfigDataSource({
    required FirebaseRemoteConfig remoteConfig,
    required Locale appLocale,
  })  : _remoteConfig = remoteConfig,
        _appLocale = appLocale;

  final FirebaseRemoteConfig _remoteConfig;
  final Locale _appLocale;

  @override
  Future<DocumentModel> getDocument() async {
    try {
      const privacyPolicy = 'privacy_policy';
      final parameter = _appLocale.languageCode == 'es'
          ? '${privacyPolicy}_es'
          : privacyPolicy;

      await _remoteConfig.fetchAndActivate();
      final response = _remoteConfig.getString(parameter);
      final jsonDocument = jsonDecode(response);
      return DocumentModel.fromJson(jsonDocument);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
