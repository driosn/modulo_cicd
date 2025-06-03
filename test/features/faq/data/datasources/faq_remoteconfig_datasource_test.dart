import 'dart:convert';
import 'dart:ui';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/features/faq/data/datasources/faq_remoteconfig_datasource.dart';
import 'package:resident_app/features/faq/data/models/faq_question_model.dart';

class MockFirebaseRemoteConfig extends Mock implements FirebaseRemoteConfig {}

void main() {
  group(
    'getQuestions() - Get questions from Remote Config ',
    () {
      late FirebaseRemoteConfig mockRemoteConfig;
      late FaqRemoteConfigDataSource faqRemoteConfigDataSource;

      final tQuestionsEmptyMap = {
        'questions': [],
      };

      final tQuestionsNotEmptyMap = {
        'questions': [
          {
            'group': 'tGroup',
            'section': 'tSection',
            'question': 'tQuestion',
            'answer': [
              {
                'type': 'tType',
                'value': 'tValue',
              }
            ]
          }
        ]
      };

      setUp(() {
        mockRemoteConfig = MockFirebaseRemoteConfig();
        faqRemoteConfigDataSource = FaqRemoteConfigDataSource(
          remoteConfig: mockRemoteConfig,
          appLocale: const Locale('en'),
        );

        when(() => mockRemoteConfig.fetchAndActivate()).thenAnswer(
          (_) async => true,
        );
      });

      test(
        'Should return a empty list of questions if all goes success',
        () async {
          when(() => mockRemoteConfig.getString('faq_questions')).thenReturn(
            jsonEncode(tQuestionsEmptyMap),
          );

          final questions = await faqRemoteConfigDataSource.getQuestions();

          expect(questions, isEmpty);
          expect(questions, isA<List<FaqQuestionModel>>());
        },
      );

      test(
        'Should return a non empty list of questions if all goes success',
        () async {
          when(() => mockRemoteConfig.getString('faq_questions')).thenReturn(
            jsonEncode(tQuestionsNotEmptyMap),
          );

          final questions = await faqRemoteConfigDataSource.getQuestions();

          expect(questions, isNotEmpty);
          expect(questions, isA<List<FaqQuestionModel>>());
        },
      );

      test(
        'Should catch exception',
        () async {
          when(() => mockRemoteConfig.getString('faq_questions')).thenThrow(
            Exception(),
          );

          expect(
            faqRemoteConfigDataSource.getQuestions(),
            throwsA(
              isA<Exception>(),
            ),
          );
        },
      );
    },
  );
}
