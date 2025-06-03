import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/faq/data/datasources/faq_remote_datasource.dart';
import 'package:resident_app/features/faq/data/models/faq_question_model.dart';
import 'package:resident_app/features/faq/data/repositories/faq_repository_impl.dart';
import 'package:resident_app/features/faq/domain/entities/faq_question.dart';
import 'package:resident_app/features/faq/domain/repositories/faq_repository.dart';

class MockFaqRemoteDataSource extends Mock implements FaqRemoteDataSource {}

void main() {
  group(
    'getQuestions() - Get questions from remote datasource',
    () {
      late FaqRemoteDataSource mockFaqRemoteDataSource;
      late FaqRepository faqRepository;

      final tQuestions = <FaqQuestionModel>[];

      setUp(
        () {
          mockFaqRemoteDataSource = MockFaqRemoteDataSource();
          faqRepository = FaqRepositoryImpl(
            faqRemoteDataSource: mockFaqRemoteDataSource,
          );
        },
      );

      test(
        'When getQuestions() go success, should return FaqQuestion list',
        () async {
          when(() => mockFaqRemoteDataSource.getQuestions()).thenAnswer(
            (_) async => tQuestions,
          );

          final result = await faqRepository.getQuestions();

          final foldedResult = result.fold(
            (l) => l,
            (r) => r,
          );

          expect(foldedResult, isA<List<FaqQuestion>>());
        },
      );

      test(
        'When getQuestions() has failure, should return Failure',
        () async {
          when(() => mockFaqRemoteDataSource.getQuestions()).thenThrow(
            Exception(),
          );

          final result = await faqRepository.getQuestions();

          final foldedResult = result.fold(
            (l) => l,
            (r) => r,
          );

          expect(foldedResult, isA<Failure>());
        },
      );
    },
  );
}
