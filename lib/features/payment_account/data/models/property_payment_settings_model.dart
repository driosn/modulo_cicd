import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/features/payment_account/domain/entities/property_payment_settings_entities.dart';

part 'property_payment_settings_model.freezed.dart';
part 'property_payment_settings_model.g.dart';

@freezed
class PropertyPaymentSettingsModel extends PropertyPaymentSettings
    with _$PropertyPaymentSettingsModel {
  const factory PropertyPaymentSettingsModel({
    @Default('') String id,
    @Default('') String propertyId,
    @Default('') String paymentProcessorTypeDescription,
    @Default(1) int paymentProcessor,
    @Default('') String paymentMethodTypeDescription,
    @Default(1) int paymentMethod,
    @Default('') String payToTypeDescription,
    @Default(1) int payTo,
  }) = _PropertyPaymentSettingsModel;

  factory PropertyPaymentSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyPaymentSettingsModelFromJson(json);
}
