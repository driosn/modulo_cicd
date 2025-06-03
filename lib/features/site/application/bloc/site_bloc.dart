import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/shared/extensions/site_extensions.dart';
import 'package:resident_app/features/billing_settings/application/bloc/bill_delivery_bloc.dart';
import 'package:resident_app/features/billing_settings/constants/billing_settings.dart';
import 'package:resident_app/features/site/domain/repositories/site_repository.dart';
import 'package:resident_app/features/user/domain/user_domain.dart';
import 'package:resident_app/features/user/user_feature.dart';

part 'site_bloc.freezed.dart';
part 'site_event.dart';
part 'site_state.dart';

class SiteBloc extends Bloc<SiteEvent, SiteState> {
  SiteBloc({
    required SiteRepository siteRepository,
  })  : _siteRepository = siteRepository,
        super(const SiteState()) {
    on<_SetSiteEvent>(_onSetSiteEvent);
    on<_SetPrimarySiteEvent>(_onSetPrimarySiteEvent);
    on<_SetBillSettingsEvent>(_onSetBillSettingsEvent);
    on<_SelectByResidentIdEvent>(_onSelectByResidentIdEvent);
    on<_SetContactInformationEvent>(_onSetContactInformationEvent);
  }

  final SiteRepository _siteRepository;

  void handleSiteSelection(Site site) {
    if (site.isAssociatedSite) {
      add(
        SiteEvent.selectByResidentId(
          (site as AssociatedSite).residentId,
        ),
      );
      return;
    }

    if (site.isPrimarySite) {
      add(
        SiteEvent.setPrimarySite(site as PrimarySite),
      );
      return;
    }
  }

  void _onSetSiteEvent(
    _SetSiteEvent event,
    Emitter<SiteState> emit,
  ) {
    handleSiteSelection(event.site);
  }
  void _onSetPrimarySiteEvent(
    _SetPrimarySiteEvent event,
    Emitter<SiteState> emit,
  ) {
  emit(state.copyWith(selectedSite: event.site as PrimarySite));
  }

  void _onSetBillSettingsEvent(
    _SetBillSettingsEvent event,
    Emitter<SiteState> emit,
  ) {
    BillingSettings billingSettings = BillingSettings(
      deliveryType: event.deliveryType.when(
        email: () => DeliveryTypeValues.email,
        mail: () => DeliveryTypeValues.mail,
        phone: () => DeliveryTypeValues.phone,
      ),
      emailAddress: event.deliveryType.when(
        email: () => event.email,
        mail: () => state.selectedSite.billingSettings.emailAddress,
        phone: () => state.selectedSite.billingSettings.emailAddress,
      ),
      phoneNumber: event.deliveryType.when(
        email: () => "",
        mail: () => "",
        phone: () => event.phoneNumber,
      ),
      leadDaysForBillReminder: event.leadDaysForBillReminder,
    );
    add(
      SiteEvent.setSite(
        PrimarySite(
          address1: state.selectedSite.address1,
          address2: state.selectedSite.address2,
          siteName: state.selectedSite.siteName,
          city: state.selectedSite.city,
          state: state.selectedSite.state,
          zipCode: state.selectedSite.zipCode,
          propertyName: state.selectedSite.propertyName,
          propertyId: state.selectedSite.propertyId,
          isBilling: state.selectedSite.isBilling,
          isEverywareCashPayConfigured: state.selectedSite.isEverywareCashPayConfigured,
          resident: state.selectedSite.resident,
          residentBalance: state.selectedSite.residentBalance,
          propertySettings: state.selectedSite.propertySettings,
          billingSettings: billingSettings,
        ),
      ),
    );
  }

  void _onSelectByResidentIdEvent(
    _SelectByResidentIdEvent event,
    Emitter<SiteState> emit,
  ) async {
    emit(
      state.copyWith(
        getByResidentIdStatus: const _GetByResidentIdLoading(),
      ),
    );

    final siteOrFailure = await _siteRepository.getSiteByResidentId(
      event.residentId,
    );

    siteOrFailure.fold(
      (failure) => emit(
        state.copyWith(
          getByResidentIdStatus: const _GetByResidentIdFailure(),
        ),
      ),
      (site) => emit(
        state.copyWith(
          selectedSite: site,
          getByResidentIdStatus: const _GetByResidentIdSuccess(),
        ),
      ),
    );

    emit(
      state.copyWith(
        getByResidentIdStatus: const _GetByResidentIdInitial(),
      ),
    );
  }

  void _onSetContactInformationEvent(
    _SetContactInformationEvent event,
    Emitter<SiteState> emit,
  ) {
    emit(
      state.copyWith(
        selectedSite: PrimarySite(
          address1: state.selectedSite.address1,
          address2: state.selectedSite.address2,
          siteName: state.selectedSite.siteName,
          city: state.selectedSite.city,
          state: state.selectedSite.state,
          zipCode: state.selectedSite.zipCode,
          propertyName: state.selectedSite.propertyName,
          propertyId: state.selectedSite.propertyId,
          isBilling: state.selectedSite.isBilling,
          isEverywareCashPayConfigured: state.selectedSite.isEverywareCashPayConfigured,
          resident: Resident(
            residentId: state.selectedSite.resident.residentId,
            firstName: state.selectedSite.resident.firstName,
            lastName: state.selectedSite.resident.lastName,
            residentEmail: event.residentEmail,
            cellPhone: event.cellPhone,
            homePhone: event.homePhone,
            useBillingAddress: event.useBillingAddress,
            billingAddress: event.billingAddress,
            billingCity: event.billingCity,
            billingState: event.billingState,
            billingPostalCode: event.billingPostalCode,
            billingCountry: state.selectedSite.resident.billingCountry,
            isOnStopPay: state.selectedSite.resident.isOnStopPay,
            isCashPayConfigured:
                state.selectedSite.resident.isCashPayConfigured,
            cashPaySettings: state.selectedSite.resident.cashPaySettings,
          ),
          residentBalance: state.selectedSite.residentBalance,
          propertySettings: state.selectedSite.propertySettings,
          billingSettings: state.selectedSite.billingSettings,
        ),
      ),
    );
  }
}
