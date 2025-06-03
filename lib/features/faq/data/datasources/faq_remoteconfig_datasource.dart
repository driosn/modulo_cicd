import 'dart:convert';
import 'dart:ui';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:resident_app/features/faq/data/datasources/faq_remote_datasource.dart';
import 'package:resident_app/features/faq/data/models/faq_question_model.dart';

class FaqRemoteConfigDataSource implements FaqRemoteDataSource {
  const FaqRemoteConfigDataSource({
    required FirebaseRemoteConfig remoteConfig,
    required Locale appLocale,
  })  : _remoteConfig = remoteConfig,
        _appLocale = appLocale;

  final FirebaseRemoteConfig _remoteConfig;
  final Locale _appLocale;

  @override
  Future<List<FaqQuestionModel>> getQuestions() async {
    try {
      const faqQuestions = 'faq_questions';
      final parameter =
          _appLocale.languageCode == 'es' ? '${faqQuestions}_es' : faqQuestions;

      await _remoteConfig.fetchAndActivate();

      final result = _remoteConfig.getString(parameter);
      final decodedResult = json.decode(result);
      return List<FaqQuestionModel>.from(
        decodedResult['questions'].map(
          (json) => FaqQuestionModel.fromJson(json),
        ),
      );
    } catch (e) {
      rethrow;
    }
  }
}
