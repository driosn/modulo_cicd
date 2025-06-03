import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:resident_app/features/faq/data/models/faq_question_model.dart';
import 'package:resident_app/features/faq/domain/entities/faq_question.dart';

void main() {
  group(
    'Faq Question Model from json',
    () {
      late File jsonFile;
      late Map<String, dynamic> json;

      setUp(
        () async {
          jsonFile = File('test_resources/faq_question_model.json');
          json = jsonDecode(await jsonFile.readAsString());
        },
      );

      test(
        'Should return a valid FaqQuestionModel instance from a valid json',
        () {
          final faqQuestionModel = FaqQuestionModel.fromJson(json);

          expect(faqQuestionModel, isA<FaqQuestionModel>());
        },
      );

      test(
        'Should return a valid FaqQuestionModel instance from a empty json',
        () {
          final faqQuestionModel = FaqQuestionModel.fromJson({});

          expect(faqQuestionModel, isA<FaqQuestionModel>());
        },
      );

      test(
        'Instance of FaqQuestionModel should be FaqQuestion type ',
        () {
          const faqQuestionModel = FaqQuestionModel();

          expect(faqQuestionModel, isA<FaqQuestion>());
        },
      );
    },
  );
}
