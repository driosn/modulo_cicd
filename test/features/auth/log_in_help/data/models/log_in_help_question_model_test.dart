import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:resident_app/features/auth/log_in_help/data/models/log_in_help_question_model.dart';
import 'package:resident_app/features/auth/log_in_help/domain/entities/log_in_help_question.dart';

void main() {
  group(
    'Log In help question model',
    () {
      late File jsonFile;
      late Map<String, dynamic> json;

      setUp(
        () async {
          jsonFile = File('test_resources/log_in_help_question_model.json');
          json = jsonDecode(await jsonFile.readAsString());
        },
      );

      test(
        'Should return a valid LogInHelpQuestionModel instance from a valid json',
        () {
          final logInQuestionModel = LogInHelpQuestionModel.fromJson(json);

          expect(logInQuestionModel, isA<LogInHelpQuestionModel>());
        },
      );

      test(
        'Should return a valid LogInHelpQuestionModel instance from a empty json',
        () {
          final logInQuestionModel = LogInHelpQuestionModel.fromJson({});

          expect(logInQuestionModel, isA<LogInHelpQuestionModel>());
        },
      );

      test(
        'Instance of LogInHelpQuestionModel should be LogInHelpQuestion type ',
        () {
          const logInQuestionModel = LogInHelpQuestionModel();

          expect(logInQuestionModel, isA<LogInHelpQuestion>());
        },
      );
    },
  );
}
