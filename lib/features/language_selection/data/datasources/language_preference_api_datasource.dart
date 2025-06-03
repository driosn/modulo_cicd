import 'package:dio/dio.dart';
import 'package:resident_app/core/shared/extensions/response_extensions.dart';
import 'package:resident_app/features/language_selection/common/language_preference_update_params.dart';
import 'package:resident_app/features/language_selection/data/datasources/language_preference_remote_datasource.dart';

class LanguagePreferenceApiDataSource
    implements LanguagePreferenceRemoteDataSource {
  const LanguagePreferenceApiDataSource({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  @override
  Future<void> update(LanguagePreferenceUpdateParams updateParams) async {
    try {
      final response = await _dio.post(
        '/ResidentUser/UpdateNotificationLanguagePreference',
        data: updateParams.toJson(),
      );

      if (response.isSuccess) {
        return;
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }
}
