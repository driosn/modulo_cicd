import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/auth/log_in_help/application/bloc/log_in_help_bloc.dart';
import 'package:resident_app/features/auth/log_in_help/domain/entities/log_in_help_question.dart';
import 'package:resident_app/features/auth/log_in_help/domain/repositories/log_in_help_repository.dart';

class MockLogInHelpRepository extends Mock implements LogInHelpRepository {}

void main() {
  group(
    'Get Questons Event',
    () {
      late LogInHelpRepository mockLogInHelpRepository;
      final tQuestions = <LogInHelpQuestion>[];

      setUp(() {
        mockLogInHelpRepository = MockLogInHelpRepository();
      });

      blocTest(
        'should emit [_Loading, _Success(Questions)] states',
        build: () => LogInHelpBloc(
          logInHelpRepository: mockLogInHelpRepository,
        ),
        act: (bloc) {
          when(() => mockLogInHelpRepository.getQuestions()).thenAnswer(
            (_) async => Right(tQuestions),
          );

          return bloc.add(const LogInHelpEvent.getQuestions());
        },
        expect: () => <LogInHelpState>[
          LogInHelpState.loading(),
          LogInHelpState.success(tQuestions),
        ],
      );

      blocTest(
        'should emit [_Loading, _Failure(Questions)] states',
        build: () => LogInHelpBloc(
          logInHelpRepository: mockLogInHelpRepository,
        ),
        act: (bloc) {
          when(() => mockLogInHelpRepository.getQuestions()).thenAnswer(
            (_) async => Left(MAError.unexpected()),
          );

          return bloc.add(const LogInHelpEvent.getQuestions());
        },
        expect: () => <LogInHelpState>[
          LogInHelpState.loading(),
          LogInHelpState.failure(MAError.unexpected().message),
        ],
      );
    },
  );
}
