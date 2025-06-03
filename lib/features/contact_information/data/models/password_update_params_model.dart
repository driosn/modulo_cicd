import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/features/contact_information/domain/entities/password_update_params.dart';

part 'password_update_params_model.freezed.dart';
part 'password_update_params_model.g.dart';

@freezed
class PasswordUpdateParamsModel extends PasswordUpdateParams
    with _$PasswordUpdateParamsModel {
  const factory PasswordUpdateParamsModel({
    @Default('') String residentUserId,
    @Default('') String newPassword,
    @Default('') String currentPassword,
  }) = _PasswordUpdateParamsModel;

  factory PasswordUpdateParamsModel.fromJson(Map<String, dynamic> json) =>
      _$PasswordUpdateParamsModelFromJson(json);
}
