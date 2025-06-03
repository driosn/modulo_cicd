import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/faq/application/bloc/faq_bloc.dart';
import 'package:resident_app/features/faq/domain/entities/faq_question.dart';
import 'package:resident_app/features/faq/domain/repositories/faq_repository.dart';

class MockFaqRepository extends Mock implements FaqRepository {}

void main() {
  group(
    FaqEvent.getQuestions,
    () {
      late FaqRepository mockFaqRepository;

      final tQuestions = <FaqQuestion>[];

      setUp(
        () {
          mockFaqRepository = MockFaqRepository();
        },
      );

      blocTest<FaqBloc, FaqState>(
        'emits [Loading, Success](statuses) when GetQuestions is added.',
        build: () => FaqBloc(
          faqRepository: mockFaqRepository,
        ),
        act: (bloc) {
          when(() => mockFaqRepository.getQuestions()).thenAnswer(
            (_) async => Right(tQuestions),
          );

          return bloc.add(const FaqEvent.getQuestions());
        },
        expect: () => <FaqState>[
          const FaqState(status: FaqStatus.loading()),
          FaqState(
            status: const FaqStatus.success(),
            questions: tQuestions,
          ),
        ],
      );

      blocTest<FaqBloc, FaqState>(
        'emits [Loading, Failure](statuses) when GetQuestions is added.',
        build: () => FaqBloc(
          faqRepository: mockFaqRepository,
        ),
        act: (bloc) {
          when(() => mockFaqRepository.getQuestions()).thenAnswer(
            (_) async => Left(Failure(message: 'tMessage')),
          );

          return bloc.add(const FaqEvent.getQuestions());
        },
        expect: () => <FaqState>[
          const FaqState(status: FaqStatus.loading()),
          const FaqState(
            status: FaqStatus.failure('tMessage'),
          ),
        ],
      );
    },
  );
}
