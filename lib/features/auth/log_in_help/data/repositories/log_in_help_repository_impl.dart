import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/auth/log_in_help/data/datasources/log_in_help_remote_datasource.dart';
import 'package:resident_app/features/auth/log_in_help/domain/entities/log_in_help_question.dart';
import 'package:resident_app/features/auth/log_in_help/domain/repositories/log_in_help_repository.dart';

class LogInHelpRepositoryImpl implements LogInHelpRepository {
  const LogInHelpRepositoryImpl({
    required LogInHelpRemoteDatasource logInHelpRemoteDatasource,
  }) : _logInHelpRemoteDatasource = logInHelpRemoteDatasource;

  final LogInHelpRemoteDatasource _logInHelpRemoteDatasource;

  @override
  Future<Either<MAError, List<LogInHelpQuestion>>> getQuestions() async {
    try {
      final questions = await _logInHelpRemoteDatasource.getQuestions();
      return Right(questions);
    } catch (e) {
      return Left(MAError.unexpected());
    }
  }
}
