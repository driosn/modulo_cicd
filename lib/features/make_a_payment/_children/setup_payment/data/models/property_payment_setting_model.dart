import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/shared/common/enums/api_enums.dart';

import '../../domain/entities/property_payment_setting.dart';

part 'property_payment_setting_model.freezed.dart';
part 'property_payment_setting_model.g.dart';

@freezed
class PropertyPaymentSettingModel extends PropertyPaymentSetting
    with _$PropertyPaymentSettingModel {
  const factory PropertyPaymentSettingModel({
    @Default('') String id,
    @Default('') String propertyId,
    @Default('') String paymentProcessorTypeDescription,
    @JsonKey(
      name: 'paymentProcessorType',
      fromJson: PaymentProcessorType.fromInt,
      toJson: PaymentProcessorType.toInt,
    )
    required PaymentProcessorType paymentProcessorType,
    @Default('') String paymentMethodTypeDescription,
    @JsonKey(
      name: 'paymentMethodType',
      fromJson: PaymentMethodType.fromInt,
      toJson: PaymentMethodType.toInt,
    )
    required PaymentMethodType paymentMethodType,
    @Default('') String payToTypeDescription,
    @JsonKey(
      name: 'payToType',
      fromJson: PayToType.fromInt,
      toJson: PayToType.toInt,
    )
    required PayToType payToType,
  }) = _PropertyPaymentSettingModel;

  factory PropertyPaymentSettingModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyPaymentSettingModelFromJson(json);
}
