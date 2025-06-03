class PropertyPaymentSettings {
  const PropertyPaymentSettings({
    required this.id,
    required this.propertyId,
    required this.paymentProcessorTypeDescription,
    required this.paymentProcessor,
    required this.paymentMethodTypeDescription,
    required this.paymentMethod,
    required this.payToTypeDescription,
    required this.payTo,
  });

  static const empty = PropertyPaymentSettings(
    id: '',
    propertyId: '',
    paymentProcessorTypeDescription: '',
    paymentProcessor: 1,
    paymentMethodTypeDescription: '',
    paymentMethod: 1,
    payToTypeDescription: '',
    payTo: 1,
  );

  final String id;
  final String propertyId;
  final String paymentProcessorTypeDescription;
  final int paymentProcessor;
  final String paymentMethodTypeDescription;
  final int paymentMethod;
  final String payToTypeDescription;
  final int payTo;
}
