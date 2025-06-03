part of 'company_content_bloc.dart';

@freezed
class CompanyContentState with _$CompanyContentState {
  const factory CompanyContentState.initial() = _Initial;
  const factory CompanyContentState.loading() = _Loading;
  const factory CompanyContentState.success({
    @Default('') String oneTimePaymentAuthorizationText,
    @Default('') String autoPayAuthorizationText,
  }) = _Success;
  const factory CompanyContentState.error() = _Error;
}
