import 'package:dio/dio.dart';
import 'package:resident_app/core/shared/common/enums/api_enums.dart';
import 'package:resident_app/core/shared/extensions/response_extensions.dart';
import 'package:resident_app/features/company_content/data/datasources/company_content_remote_datasource.dart';
import 'package:resident_app/features/company_content/data/models/company_content_model.dart';

class CompanyContentApiDataSource implements CompanyContentRemoteDataSource {
  const CompanyContentApiDataSource({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  @override
  Future<CompanyContentModel> get(
    String companyId,
    ContentType contentType,
  ) async {
    try {
      final response = await _dio.get('/Content/$companyId/${ContentType.toInt(contentType)}');
      if (response.isSuccess) {
        return CompanyContentModel.fromJson(response.data);
      }

      return Future.error("The response was not successful.");
    } catch (e) {
      rethrow;
    }
  }
}
