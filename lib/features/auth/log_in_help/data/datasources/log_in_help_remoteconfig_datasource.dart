import 'dart:convert';
import 'dart:ui';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:resident_app/features/auth/log_in_help/data/datasources/log_in_help_remote_datasource.dart';
import 'package:resident_app/features/auth/log_in_help/data/models/log_in_help_question_model.dart';

class LogInHelpRemoteConfigDataSource implements LogInHelpRemoteDatasource {
  LogInHelpRemoteConfigDataSource({
    required FirebaseRemoteConfig remoteConfig,
    required Locale appLocale,
  })  : _remoteConfig = remoteConfig,
        _appLocale = appLocale;

  final FirebaseRemoteConfig _remoteConfig;
  final Locale _appLocale;

  @override
  Future<List<LogInHelpQuestionModel>> getQuestions() async {
    try {
      const logInHelpQuestions = 'log_in_help_questions';
      final parameter = _appLocale.languageCode == 'es' ? '${logInHelpQuestions}_es' : logInHelpQuestions;

      await _remoteConfig.fetchAndActivate();
      final response = _remoteConfig.getString(parameter);
      final jsonDocument = jsonDecode(response) as List<dynamic>;

      return List<LogInHelpQuestionModel>.from(
        jsonDocument.map(
          (json) => LogInHelpQuestionModel.fromJson(json),
        ),
      );
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
