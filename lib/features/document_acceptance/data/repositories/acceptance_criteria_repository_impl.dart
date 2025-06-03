import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/common/empty.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/document_acceptance/common/params/update_acceptance_criteria_params.dart';
import 'package:resident_app/features/document_acceptance/data/datasources/acceptance_criteria_remote_datasource.dart';
import 'package:resident_app/features/document_acceptance/domain/entities/acceptance_criteria_info.dart';
import 'package:resident_app/features/document_acceptance/domain/repositories/acceptance_criteria_repository.dart';

class AcceptanceCriteriaRepositoryImpl implements AcceptanceCriteriaRepository {
  const AcceptanceCriteriaRepositoryImpl({
    required AcceptanceCriteriaRemoteDataSource acceptanceCriteriaRemoteDataSource,
  }) : _remoteDataSource = acceptanceCriteriaRemoteDataSource;

  final AcceptanceCriteriaRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, List<AcceptanceCriteriaInfo>>> getAcceptanceCriteria(String residentUserId) async {
    try {
      final acceptanceCriteriaInfo = await _remoteDataSource.getAcceptanceCriteria(residentUserId);
      return Right(acceptanceCriteriaInfo);
    } catch (e) {
      return Left(
        Failure(message: 'Unknown Error'),
      );
    }
  }

  @override
  Future<Either<Failure, Empty>> updateAcceptanceCriteria(
    UpdateAcceptanceCriteriaParams params,
  ) async {
    try {
      await _remoteDataSource.updateAcceptanceCriteria(
        params,
      );
      return Right(Empty());
    } catch (e) {
      return Left(Failure(message: 'Unknown Error'));
    }
  }
}
