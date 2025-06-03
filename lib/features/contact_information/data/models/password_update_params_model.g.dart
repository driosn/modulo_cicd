// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_update_params_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasswordUpdateParamsModelImpl _$$PasswordUpdateParamsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PasswordUpdateParamsModelImpl(
      residentUserId: json['residentUserId'] as String? ?? '',
      newPassword: json['newPassword'] as String? ?? '',
      currentPassword: json['currentPassword'] as String? ?? '',
    );

Map<String, dynamic> _$$PasswordUpdateParamsModelImplToJson(
        _$PasswordUpdateParamsModelImpl instance) =>
    <String, dynamic>{
      'residentUserId': instance.residentUserId,
      'newPassword': instance.newPassword,
      'currentPassword': instance.currentPassword,
    };
