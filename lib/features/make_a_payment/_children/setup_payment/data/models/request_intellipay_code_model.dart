import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/domain/entities/request_intellipay_code.dart';

part 'request_intellipay_code_model.freezed.dart';
part 'request_intellipay_code_model.g.dart';

@freezed
class RequestIntelliPayCodeModel extends RequestIntelliPayCode
    with _$RequestIntelliPayCodeModel {
  const factory RequestIntelliPayCodeModel({
    @Default('') String intelliPayJavascriptCode,
    @Default('') String passThrough,
    @Default('') String token,
  }) = _RequestIntelliPayCodeModel;

  factory RequestIntelliPayCodeModel.fromJson(Map<String, dynamic> json) =>
      _$RequestIntelliPayCodeModelFromJson(json);
}
