import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_date.freezed.dart';
part 'payment_date.g.dart';

@freezed
class OptionInfo with _$OptionInfo {
  const factory OptionInfo({
    required String name,
    required int value,
  }) = _OptionInfo;

  factory OptionInfo.fromJson(Map<String, dynamic> json) =>
      _$OptionInfoFromJson(json);
}
