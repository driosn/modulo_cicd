part of 'site_bloc.dart';

@freezed
class SiteState with _$SiteState {
  const factory SiteState({
    @Default(PrimarySite.empty) PrimarySite selectedSite,
    @Default(GetByResidentIdStatus.initial())
    GetByResidentIdStatus getByResidentIdStatus,
  }) = _SiteState;
}

@freezed
class GetByResidentIdStatus with _$GetByResidentIdStatus {
  const factory GetByResidentIdStatus.initial() = _GetByResidentIdInitial;
  const factory GetByResidentIdStatus.loading() = _GetByResidentIdLoading;
  const factory GetByResidentIdStatus.success() = _GetByResidentIdSuccess;
  const factory GetByResidentIdStatus.failure() = _GetByResidentIdFailure;
}
