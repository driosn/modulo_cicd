import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/features/auth/log_in_help/data/datasources/log_in_help_remoteconfig_datasource.dart';
import 'package:resident_app/features/auth/log_in_help/data/models/log_in_help_question_model.dart';

class MockFirebaseRemoteConfig extends Mock implements FirebaseRemoteConfig {}

class MockLocale extends Mock implements Locale {}

void main() {
  group(
    'getQuestions()',
    () {
      late FirebaseRemoteConfig mockFirebaseRemoteConfig;
      late Locale mockLocale;
      late LogInHelpRemoteConfigDataSource logInHelpRemoteConfigDataSource;

      final tList = "[]";

      setUp(
        () {
          mockFirebaseRemoteConfig = MockFirebaseRemoteConfig();
          mockLocale = MockLocale();

          logInHelpRemoteConfigDataSource = LogInHelpRemoteConfigDataSource(
            remoteConfig: mockFirebaseRemoteConfig,
            appLocale: mockLocale,
          );
        },
      );

      test(
        'should return a valid list with english language',
        () async {
          when(() => mockLocale.languageCode).thenReturn('en');
          when(() => mockFirebaseRemoteConfig.fetchAndActivate()).thenAnswer((_) async => true);
          when(() => mockFirebaseRemoteConfig.getString(any())).thenReturn(
            tList,
          );

          final questionsOrFailure = await logInHelpRemoteConfigDataSource.getQuestions();

          verify(() => mockFirebaseRemoteConfig.getString('log_in_help_questions')).called(1);
          expect(questionsOrFailure, isA<List<LogInHelpQuestionModel>>());
        },
      );

      test(
        'should return a valid list with english language',
        () async {
          when(() => mockLocale.languageCode).thenReturn('es');
          when(() => mockFirebaseRemoteConfig.fetchAndActivate()).thenAnswer((_) async => true);
          when(() => mockFirebaseRemoteConfig.getString(any())).thenReturn(
            tList,
          );

          final questionsOrFailure = await logInHelpRemoteConfigDataSource.getQuestions();

          verify(() => mockFirebaseRemoteConfig.getString('log_in_help_questions_es')).called(1);
          expect(questionsOrFailure, isA<List<LogInHelpQuestionModel>>());
        },
      );

      test(
        'should rethrow exception',
        () async {
          when(() => mockLocale.languageCode).thenReturn('en');
          when(() => mockFirebaseRemoteConfig.fetchAndActivate()).thenAnswer((_) async => true);
          when(() => mockFirebaseRemoteConfig.getString(any())).thenThrow(Exception());

          expect(
            () async => await logInHelpRemoteConfigDataSource.getQuestions(),
            throwsA(isA<Exception>()),
          );
        },
      );
    },
  );
}
