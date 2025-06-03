import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/common/empty.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/domain/entities/property_payment_setting.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/domain/entities/request_intellipay_code.dart';
import 'package:resident_app/features/make_a_payment/common/make_a_payment_request_params.dart';
import 'package:resident_app/features/make_a_payment/common/request_intellipay_code_params.dart';
import 'package:resident_app/features/make_a_payment/data/repositories/make_a_payment_repository_impl.dart';

abstract class MakeAPaymentRepository {
  Future<Either<MAError, List<PropertyPaymentSetting>>>
      getPropertyPaymentSettings(
    String propertyId,
  );

  Future<Either<MakeAPaymentErrorResult, Empty>> postMakeAPayment({
    required MakeAPaymentRequestParams params,
  });

  Future<Either<MakeAPaymentErrorResult, RequestIntelliPayCode>> requestIntelliPayCode({
    required RequestIntelliPayCodeParams params,
  });
}
