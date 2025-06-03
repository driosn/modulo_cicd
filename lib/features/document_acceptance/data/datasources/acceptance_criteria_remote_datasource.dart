import 'package:resident_app/features/document_acceptance/common/params/update_acceptance_criteria_params.dart';
import 'package:resident_app/features/document_acceptance/data/models/acceptance_criteria_info_model.dart';

abstract class AcceptanceCriteriaRemoteDataSource {
  Future<List<AcceptanceCriteriaInfoModel>> getAcceptanceCriteria(String residentUserId);
  Future<void> updateAcceptanceCriteria(
    UpdateAcceptanceCriteriaParams params,
  );
}
