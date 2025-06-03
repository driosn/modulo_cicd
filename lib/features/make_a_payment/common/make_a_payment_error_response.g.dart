// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'make_a_payment_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MakePaymentErrorResponseImpl _$$MakePaymentErrorResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MakePaymentErrorResponseImpl(
      errorCode:
          MakePaymentErrorCode.fromInt((json['errorCode'] as num).toInt()),
      errorMessage: json['errorMessage'] as String?,
      errorDetails: (json['errorDetails'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$$MakePaymentErrorResponseImplToJson(
        _$MakePaymentErrorResponseImpl instance) =>
    <String, dynamic>{
      'errorCode': MakePaymentErrorCode.toInt(instance.errorCode),
      'errorMessage': instance.errorMessage,
      'errorDetails': instance.errorDetails,
    };
