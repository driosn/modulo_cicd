import 'package:resident_app/features/make_a_payment/_children/setup_payment/data/models/property_payment_setting_model.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/data/models/request_intellipay_code_model.dart';
import 'package:resident_app/features/make_a_payment/common/make_a_payment_request_params.dart';
import 'package:resident_app/features/make_a_payment/common/request_intellipay_code_params.dart';

abstract class MakeAPaymentRemoteDataSource {
  Future<List<PropertyPaymentSettingModel>> getPropertyPaymentSettings(
    String propertyId,
  );

  Future<void> postMakeAPayment({
    required MakeAPaymentRequestParams params,
  });

  Future<RequestIntelliPayCodeModel> requestIntelliPayCode({
    required RequestIntelliPayCodeParams params,
  });
}
