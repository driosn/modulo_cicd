import 'package:dio/dio.dart';
import 'package:resident_app/core/shared/network/response_manager.dart';
import 'package:resident_app/features/document_acceptance/common/params/update_acceptance_criteria_params.dart';
import 'package:resident_app/features/document_acceptance/data/datasources/acceptance_criteria_remote_datasource.dart';
import 'package:resident_app/features/document_acceptance/data/models/acceptance_criteria_info_model.dart';

class AcceptanceCriteriaApi with ResponseManager implements AcceptanceCriteriaRemoteDataSource {
  const AcceptanceCriteriaApi({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  @override
  Future<List<AcceptanceCriteriaInfoModel>> getAcceptanceCriteria(
    String residentUserId,
  ) async {
    return await handle(
      request: _dio.get(
        '/AcceptanceCriteria/$residentUserId',
      ),
      onSuccess: (data) {
        return List<AcceptanceCriteriaInfoModel>.from(
          data.map((json) => AcceptanceCriteriaInfoModel.fromJson(json)),
        );
      },
    );
  }

  @override
  Future<void> updateAcceptanceCriteria(
    UpdateAcceptanceCriteriaParams params,
  ) async {
    return await handle(
      request: _dio.put(
        '/AcceptanceCriteria',
        data: params.toJson(),
      ),
      onSuccess: (data) {},
    );
  }
}
