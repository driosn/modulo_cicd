import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/auth/log_in_help/data/datasources/log_in_help_remote_datasource.dart';
import 'package:resident_app/features/auth/log_in_help/data/models/log_in_help_question_model.dart';
import 'package:resident_app/features/auth/log_in_help/data/repositories/log_in_help_repository_impl.dart';

class MockLogInHelpRemoteDatasource extends Mock implements LogInHelpRemoteDatasource {}

void main() {
  group(
    'getQuestions()',
    () {
      late MockLogInHelpRemoteDatasource mockLogInHelpRemoteDatasource;
      late LogInHelpRepositoryImpl logInHelpRepositoryImpl;

      final tQuestions = <LogInHelpQuestionModel>[];

      setUp(
        () {
          mockLogInHelpRemoteDatasource = MockLogInHelpRemoteDatasource();

          logInHelpRepositoryImpl = LogInHelpRepositoryImpl(
            logInHelpRemoteDatasource: mockLogInHelpRemoteDatasource,
          );
        },
      );

      test(
        'should return Right(tQuestions)',
        () async {
          when(() => mockLogInHelpRemoteDatasource.getQuestions()).thenAnswer((_) async => tQuestions);

          final questionsOrFailure = await logInHelpRepositoryImpl.getQuestions();

          final foldedResult = questionsOrFailure.fold(
            (l) => l,
            (r) => r,
          );

          expect(foldedResult, tQuestions);
        },
      );

      test(
        'should return Left(MAError)',
        () async {
          when(() => mockLogInHelpRemoteDatasource.getQuestions()).thenThrow(Exception());

          final questionsOrFailure = await logInHelpRepositoryImpl.getQuestions();

          final foldedResult = questionsOrFailure.fold(
            (l) => l,
            (r) => r,
          );

          expect(foldedResult, isA<MAError>());
        },
      );
    },
  );
}
