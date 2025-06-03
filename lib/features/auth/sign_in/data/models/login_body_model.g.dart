// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginBodyModelImpl _$$LoginBodyModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginBodyModelImpl(
      loginResponse: json['loginResponse'] == null
          ? const LoginResponseModel()
          : LoginResponseModel.fromJson(
              json['loginResponse'] as Map<String, dynamic>),
      token: json['token'] as String? ?? '',
    );

Map<String, dynamic> _$$LoginBodyModelImplToJson(
        _$LoginBodyModelImpl instance) =>
    <String, dynamic>{
      'loginResponse': instance.loginResponse,
      'token': instance.token,
    };
