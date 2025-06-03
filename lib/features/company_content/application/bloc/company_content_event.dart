part of 'company_content_bloc.dart';

@freezed
class CompanyContentEvent with _$CompanyContentEvent {
  const factory CompanyContentEvent.getAutoPayAuthorizationText(String companyId) = _GetAutoPayAuthorizationTextEvent;
  const factory CompanyContentEvent.getOneTimePaymentAuthorizationText(String companyId) = _GetOneTimePaymentAuthorizationTextEvent;
}
