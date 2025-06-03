import 'dart:convert';
import 'dart:ui';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:resident_app/core/data/models/document_model.dart';
import 'package:resident_app/features/terms_of_use/data/datasources/terms_of_use_remote_datasource.dart';

class TermsOfUseRemoteConfigDataSource implements TermsOfUseRemoteDataSource {
  const TermsOfUseRemoteConfigDataSource({
    required FirebaseRemoteConfig remoteConfig,
    required Locale appLocale,
  })  : _remoteConfig = remoteConfig,
        _appLocale = appLocale;

  final FirebaseRemoteConfig _remoteConfig;
  final Locale _appLocale;

  @override
  Future<DocumentModel> getDocument() async {
    try {
      const termsOfService = 'terms_of_service';
      final parameter = _appLocale.languageCode == 'es'
          ? '${termsOfService}_es'
          : termsOfService;

      await _remoteConfig.fetchAndActivate();
      final response = _remoteConfig.getString(parameter);
      final jsonDocument = jsonDecode(response);
      return DocumentModel.fromJson(jsonDocument);
    } catch (e) {
      rethrow;
    }
  }
}
