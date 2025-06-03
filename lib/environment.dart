import 'package:freezed_annotation/freezed_annotation.dart';

part 'environment.freezed.dart';

@freezed
class Environment with _$Environment {
  const factory Environment.dev({
    @Default('dev') String name,
    @Default('https://rpm-dev-api.manageamerica.com/api/v1') String apiBaseUrl,
    @Default('developer') String buildType,
  }) = _DevEnvironment;

  const factory Environment.qa({
    @Default('qa') String name,
    @Default('https://rpm-qa-api.manageamerica.com/api/v1') String apiBaseUrl,
    @Default('developer') String buildType,
  }) = _QAEnvironment;

  const factory Environment.prod({
    @Default('prod') String name,
    @Default('https://rpm-api.manageamerica.com/api/v1') String apiBaseUrl,
    @Default('developer') String buildType,
  }) = _ProdEnvironment;
}
