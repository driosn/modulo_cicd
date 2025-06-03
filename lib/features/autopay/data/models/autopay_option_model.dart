import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/features/autopay/data/models/autopay_option_types.dart';
import 'package:resident_app/features/autopay/domain/entities/autopay_option.dart';

part 'autopay_option_model.freezed.dart';
part 'autopay_option_model.g.dart';

@freezed
class AutoPayOptionModel extends AutoPayOption with _$AutoPayOptionModel {
  const factory AutoPayOptionModel({
    @Default('') String id,
    @Default('') String autoPayOptionTypeDescription,
    @Default(AutoPayOptionTypes.empty) AutoPayOptionTypes autoPayOptionType,
  }) = _AutoPayOptionModel;

  factory AutoPayOptionModel.fromJson(Map<String, dynamic> json) =>
      _$AutoPayOptionModelFromJson(json);
}
