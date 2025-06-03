import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/common/empty.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/document_acceptance/common/params/update_acceptance_criteria_params.dart';
import 'package:resident_app/features/document_acceptance/domain/entities/acceptance_criteria_info.dart';

abstract class AcceptanceCriteriaRepository {
  Future<Either<Failure, List<AcceptanceCriteriaInfo>>> getAcceptanceCriteria(
    String residentUserId,
  );

  Future<Either<Failure, Empty>> updateAcceptanceCriteria(
    UpdateAcceptanceCriteriaParams params,
  );
}
