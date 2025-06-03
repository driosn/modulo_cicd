// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseModelImpl _$$LoginResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResponseModelImpl(
      successful: json['successful'] as bool? ?? false,
      rpmRefreshToken: json['rpmRefreshToken'] as String? ?? '',
      userClaims: (json['userClaims'] as List<dynamic>?)
              ?.map((e) => UserClaimModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      expiresUtc: json['expiresUtc'] as String? ?? '',
      apiMessage: json['apiMessage'] as String? ?? '',
    );

Map<String, dynamic> _$$LoginResponseModelImplToJson(
        _$LoginResponseModelImpl instance) =>
    <String, dynamic>{
      'successful': instance.successful,
      'rpmRefreshToken': instance.rpmRefreshToken,
      'userClaims': instance.userClaims,
      'expiresUtc': instance.expiresUtc,
      'apiMessage': instance.apiMessage,
    };
