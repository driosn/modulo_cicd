import 'dart:convert';
import 'dart:ui';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:resident_app/core/data/models/document_model.dart';
import 'package:resident_app/features/legal_documents/data/datasources/legal_documents_remote_datasource.dart';

class LegalDocumentsRemoteConfigDataSource
    implements LegalDocumentsRemoteDataSource {
  const LegalDocumentsRemoteConfigDataSource({
    required FirebaseRemoteConfig remoteConfig,
    required Locale appLocale,
  })  : _remoteConfig = remoteConfig,
        _appLocale = appLocale;

  final FirebaseRemoteConfig _remoteConfig;
  final Locale _appLocale;

  @override
  Future<DocumentModel> getDocument() async {
    try {
      const legalDocument = 'eula';
      final parameter = _appLocale.languageCode == 'es'
          ? '${legalDocument}_es'
          : legalDocument;

      await _remoteConfig.fetchAndActivate();
      final response = _remoteConfig.getString(parameter);
      final jsonDocument = jsonDecode(response);
      return DocumentModel.fromJson(jsonDocument);
    } catch (e) {
      rethrow;
    }
  }
}
