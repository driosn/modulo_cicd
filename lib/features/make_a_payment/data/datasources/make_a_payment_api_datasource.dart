import 'package:dio/dio.dart';
import 'package:resident_app/core/shared/network/response_manager.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/data/models/property_payment_setting_model.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/data/models/request_intellipay_code_model.dart';
import 'package:resident_app/features/make_a_payment/common/make_a_payment_request_params.dart';
import 'package:resident_app/features/make_a_payment/common/request_intellipay_code_params.dart';
import 'package:resident_app/features/make_a_payment/data/datasources/make_a_payment_remote_datasource.dart';

class MakeAPaymentApiDataSource
    with ResponseManager
    implements MakeAPaymentRemoteDataSource {
  const MakeAPaymentApiDataSource({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  @override
  Future<List<PropertyPaymentSettingModel>> getPropertyPaymentSettings(
    String propertyId,
  ) async {
    return await handle(
      request: _dio.get(
        '/Payments/PropertyPaymentSettings?propertyId=$propertyId',
      ),
      onSuccess: (data) {
        return List<PropertyPaymentSettingModel>.from(
          data.map(
            (json) => PropertyPaymentSettingModel.fromJson(json),
          ),
        );
      },
    );
  }

  @override
  Future<void> postMakeAPayment({
    required MakeAPaymentRequestParams params,
  }) async {
    return handle(
      request: _dio.post(
        '/Payments/MakeAPayment',
        data: params.toJson(),
      ),
      onSuccess: (data) {},
    );
  }

  @override
  Future<RequestIntelliPayCodeModel> requestIntelliPayCode({
    required RequestIntelliPayCodeParams params,
  }) async {
    return handle<RequestIntelliPayCodeModel>(
      request: _dio.post(
        '/Payments/RequestIntelliPayCode',
        data: params.toJson(),
      ),
      onSuccess: (data) {
        return RequestIntelliPayCodeModel.fromJson(data);
      },
    );
  }
}
