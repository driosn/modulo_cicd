import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/features/autopay/data/models/autopay_option_model.dart';
import 'package:resident_app/features/autopay/domain/entities/autopay_settings.dart';

part 'autopay_settings_model.freezed.dart';
part 'autopay_settings_model.g.dart';

@freezed
class AutoPaySettingsModel extends AutoPaySettings with _$AutoPaySettingsModel {
  const factory AutoPaySettingsModel({
    @Default('') String id,
    @Default(AutoPayOptionModel()) AutoPayOptionModel autoPayOption,
    @Default(false) bool isActive,
    @Default('') String residentId,
    @Default('') String referenceId,
    @Default(0) int payAmount,
    @Default('') String paymentMethodTypeDescription,
    @Default(1) int paymentMethodType,
    @Default(1) int payDay,
  }) = _AutoPaySettingsModel;

  factory AutoPaySettingsModel.fromJson(Map<String, dynamic> json) =>
      _$AutoPaySettingsModelFromJson(json);
}
