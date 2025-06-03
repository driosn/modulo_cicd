import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/shared/common/enums/api_enums.dart';

part 'make_a_payment_error_response.freezed.dart';
part 'make_a_payment_error_response.g.dart';

@freezed
class MakePaymentErrorResponse with _$MakePaymentErrorResponse {
  const factory MakePaymentErrorResponse({
    @JsonKey(
      name: 'errorCode',
      fromJson: MakePaymentErrorCode.fromInt,
      toJson: MakePaymentErrorCode.toInt,
    )
    required MakePaymentErrorCode errorCode,
    String? errorMessage,
    @Default({}) Map<String, String> errorDetails,
  }) = _MakePaymentErrorResponse;

  factory MakePaymentErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$MakePaymentErrorResponseFromJson(json);
}