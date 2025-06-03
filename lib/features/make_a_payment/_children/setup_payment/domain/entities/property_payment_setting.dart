import 'package:resident_app/core/shared/common/enums/api_enums.dart';

class PropertyPaymentSetting {
  const PropertyPaymentSetting({
    required this.id,
    required this.propertyId,
    required this.paymentProcessorTypeDescription,
    required this.paymentProcessorType,
    required this.paymentMethodTypeDescription,
    required this.paymentMethodType,
    required this.payToTypeDescription,
    required this.payToType,
  });

  final String id;
  final String propertyId;
  final String paymentProcessorTypeDescription;
  final PaymentProcessorType paymentProcessorType;
  final String paymentMethodTypeDescription;
  final PaymentMethodType paymentMethodType;
  final String payToTypeDescription;
  final PayToType payToType;
}
