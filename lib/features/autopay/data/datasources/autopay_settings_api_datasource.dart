import 'package:dio/dio.dart';
import 'package:resident_app/core/shared/extensions/response_extensions.dart';
import 'package:resident_app/core/shared/network/response_manager.dart';
import 'package:resident_app/features/autopay/data/datasources/autopay_settings_remote_datasource.dart';
import 'package:resident_app/features/autopay/data/models/autopay_settings_model.dart';
import 'package:resident_app/features/autopay/data/models/autopay_update_settings_model.dart';

class AutoPaySettingsApiDataSource
    with ResponseManager
    implements AutoPaySettingsRemoteDataSource {
  const AutoPaySettingsApiDataSource({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  @override
  Future<List<AutoPaySettingsModel>> getAutoPaySettings(
    String residentId,
  ) async {
    return await handle(
      request: _dio.get(
        '/AutoPay/$residentId',
      ),
      onSuccess: (data) {
        return List<AutoPaySettingsModel>.from(
          data.map(
            (json) => AutoPaySettingsModel.fromJson(json),
          ),
        );
      },
    );
  }

  @override
  Future<void> updateAutoPaySettings(
    AutoPayUpdateSettingsModel autopaySettings,
  ) async {
    try {
      final response =
          await _dio.post('/AutoPay', data: autopaySettings.toJson());

      if (response.isSuccess) {
        return;
      }

      throw Exception();
    } catch (e) {
      rethrow;
    }
  }
}
