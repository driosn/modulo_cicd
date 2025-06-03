import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/features/autopay/data/models/autopay_option_types.dart';
import 'package:resident_app/features/autopay/domain/entities/autopay_update_settings.dart';


part 'autopay_update_settings_model.freezed.dart';
part 'autopay_update_settings_model.g.dart';

@freezed
class AutoPayUpdateSettingsModel extends AutoPayUpdateSettings with _$AutoPayUpdateSettingsModel {
  factory AutoPayUpdateSettingsModel({
    @Default(null) String? autoPaySettingsId,
    @Default(null) int? paymentAmount,
    @Default(AutoPayOptionTypes.empty) AutoPayOptionTypes autoPayOptionType,
    @Default(true) bool isActive,
    @Default(1) int paymentMethodType,
    @Default(1) int paymentDay,
    @Default('') String residentId,
    @Default('') String residentUserId,
    @Default('string') String referenceId,
  }) = _AutoPayUpdateSettingsModel;

  factory AutoPayUpdateSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$AutoPayUpdateSettingsModelFromJson(json);
}
