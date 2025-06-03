import 'package:dio/dio.dart';
import 'package:resident_app/core/shared/extensions/response_extensions.dart';
import 'package:resident_app/features/site/data/datasources/site_remote_datasource.dart';
import 'package:resident_app/features/user/data/models/user_model.dart';

class SiteApiDataSource implements SiteRemoteDataSource {
  const SiteApiDataSource({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  @override
  Future<PrimarySiteModel> getSiteByResidentId(String residentId) async {
    try {
      final response = await _dio
          .get('/Site/$residentId');

      if (response.isSuccess) {
        return PrimarySiteModel.fromJson(response.data);
      }

      throw Exception();
    } catch (exception) {
      rethrow;
    }
  }
}
