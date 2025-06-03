import 'package:dio/dio.dart';
import 'package:resident_app/core/shared/extensions/response_extensions.dart';
import 'package:resident_app/features/billing_settings/common/billing_settings_update_params.dart';
import 'package:resident_app/features/billing_settings/data/datasources/billing_settings_remote_datasource.dart';

class BillingSettingsApiDataSource implements BillingSettingsRemoteDataSource {
  const BillingSettingsApiDataSource({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  @override
  Future<void> update(BillingSettingsUpdateParams updateParams) async {
    try {
      final response = await _dio.patch(
        '/BillingSettings/UpdateBillingSettings',
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
