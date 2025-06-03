import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/data/models/language_model.dart';
import 'package:resident_app/core/shared/data/secure_storage.dart';
import 'package:resident_app/core/shared/helpers/crashlytics_helper.dart';
import 'package:resident_app/features/user/user_feature.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({
    required SecureStorageWrapper storageWrapper,
    required UserRepository userRepository,
    required CrashlyticsHelper crashlyticsHelper,
  })  : _storageWrapper = storageWrapper,
        _userRepository = userRepository,
        _crashlyticsHelper = crashlyticsHelper,
        super(const UserState()) {
    on<_SetUserEvent>(_onSetUserEvent);
    on<_SetUsernameEvent>(_onSetUsernameEvent);
    on<_SetEmailEvent>(_onSetEmailEvent);
    on<_SetNotificationLanguagePreferenceTypeEvent>(
      _onSetNotificationLanguagePreferenceTypeEvent,
    );
    on<_SetContactInformationEvent>(_onSetContactInformationEvent);
    on<_GetUserEvent>(_onGetUserEvent);
    on<_RestartUserEvent>(_onRestartUserEvent);
  }

  final SecureStorageWrapper _storageWrapper;
  final UserRepository _userRepository;
  final CrashlyticsHelper _crashlyticsHelper;

  void _onSetUserEvent(
    _SetUserEvent event,
    Emitter<UserState> emit,
  ) {
    emit(
      state.copyWith(
        user: event.user,
        languageSelectorInitialValue: event.user.notificationLanguagePreferenceType == Language.english.languageType ? Language.english : Language.spanish,
      ),
    );
  }

  void _onSetUsernameEvent(
    _SetUsernameEvent event,
    Emitter<UserState> emit,
  ) {
    emit(
      state.copyWith(
        user: User(
          residentUserId: state.user.residentUserId,
          username: event.username,
          residentUserEmail: state.user.residentUserEmail,
          companyId: state.user.companyId,
          companyNumber: state.user.companyNumber,
          propertyId: state.user.propertyId,
          propertyNumber: state.user.propertyNumber,
          notificationLanguagePreferenceType: state.user.notificationLanguagePreferenceType,
          notificationLanguagePreferenceTypeDescription: state.user.notificationLanguagePreferenceTypeDescription,
          notificationLanguagePreference: state.user.notificationLanguagePreference,
          primarySite: state.user.primarySite,
          associatedSites: state.user.associatedSites,
          everywareSettings: state.user.everywareSettings,
        ),
      ),
    );
  }

  void _onSetEmailEvent(
    _SetEmailEvent event,
    Emitter<UserState> emit,
  ) {
    emit(
      state.copyWith(
        user: User(
          residentUserId: state.user.residentUserId,
          username: state.user.username,
          residentUserEmail: event.email,
          companyId: state.user.companyId,
          companyNumber: state.user.companyNumber,
          propertyId: state.user.propertyId,
          propertyNumber: state.user.propertyNumber,
          notificationLanguagePreferenceType: state.user.notificationLanguagePreferenceType,
          notificationLanguagePreferenceTypeDescription: state.user.notificationLanguagePreferenceTypeDescription,
          notificationLanguagePreference: state.user.notificationLanguagePreference,
          primarySite: state.user.primarySite,
          associatedSites: state.user.associatedSites,
          everywareSettings: state.user.everywareSettings,
        ),
      ),
    );
  }

  void _onSetNotificationLanguagePreferenceTypeEvent(
    _SetNotificationLanguagePreferenceTypeEvent event,
    Emitter<UserState> emit,
  ) {
    emit(
      state.copyWith(
        user: User(
          residentUserId: state.user.residentUserId,
          username: state.user.username,
          residentUserEmail: state.user.residentUserEmail,
          companyId: state.user.companyId,
          companyNumber: state.user.companyNumber,
          propertyId: state.user.propertyId,
          propertyNumber: state.user.propertyNumber,
          notificationLanguagePreferenceType: event.language.languageType,
          notificationLanguagePreferenceTypeDescription: event.language.languageType == Language.english.languageType ? Language.english.languageCode : Language.spanish.languageCode,
          notificationLanguagePreference: event.language,
          primarySite: state.user.primarySite,
          associatedSites: state.user.associatedSites,
          everywareSettings: state.user.everywareSettings,
        ),
        languageSelectorInitialValue: event.language.languageType == Language.english.languageType ? Language.english : Language.spanish,
      ),
    );
  }

  void _onSetContactInformationEvent(
    _SetContactInformationEvent event,
    Emitter<UserState> emit,
  ) {
    emit(
      state.copyWith(
        user: User(
          residentUserId: state.user.residentUserId,
          username: state.user.username,
          residentUserEmail: state.user.residentUserEmail,
          companyId: state.user.companyId,
          companyNumber: state.user.companyNumber,
          propertyId: state.user.propertyId,
          propertyNumber: state.user.propertyNumber,
          notificationLanguagePreferenceType: state.user.notificationLanguagePreferenceType,
          notificationLanguagePreferenceTypeDescription: state.user.notificationLanguagePreferenceTypeDescription,
          notificationLanguagePreference: state.user.notificationLanguagePreference,
          primarySite: PrimarySite(
            address1: state.user.primarySite.address1,
            address2: state.user.primarySite.address2,
            siteName: state.user.primarySite.siteName,
            city: state.user.primarySite.city,
            state: state.user.primarySite.state,
            zipCode: state.user.primarySite.zipCode,
            propertyName: state.user.primarySite.propertyName,
            propertyId: state.user.primarySite.propertyId,
            isBilling: state.user.primarySite.isBilling,
            isEverywareCashPayConfigured:state.user.primarySite.isEverywareCashPayConfigured,
            resident: Resident(
              residentId: state.user.primarySite.resident.residentId,
              firstName: state.user.primarySite.resident.firstName,
              lastName: state.user.primarySite.resident.lastName,
              residentEmail: event.residentEmail,
              cellPhone: event.cellPhone,
              homePhone: event.homePhone,
              useBillingAddress: event.useBillingAddress,
              billingAddress: event.billingAddress,
              billingCity: event.billingCity,
              billingState: event.billingState,
              billingPostalCode: event.billingPostalCode,
              billingCountry: state.user.primarySite.resident.billingCountry,
              isOnStopPay: state.user.primarySite.resident.isOnStopPay,
              isCashPayConfigured: state.user.primarySite.resident.isCashPayConfigured,
              cashPaySettings: state.user.primarySite.resident.cashPaySettings,
            ),
            residentBalance: state.user.primarySite.residentBalance,
            propertySettings: state.user.primarySite.propertySettings,
            billingSettings: state.user.primarySite.billingSettings,
          ),
          associatedSites: state.user.associatedSites,
          everywareSettings: state.user.everywareSettings,
        ),
      ),
    );
  }

  List<AssociatedSite> get newMethod {
    return [];
  }

  void _onGetUserEvent(
    _GetUserEvent event,
    Emitter<UserState> emit,
  ) async {
    final userId = await _storageWrapper.getString(userIdKey);

    final userResponse = await _userRepository.get();

    userResponse.fold(
      (failure) {
        emit(
          state.copyWith(
            userStatus: UserStatus.failure,
          ),
        );
      },
      (user) {
        _crashlyticsHelper.setUser(state.user.residentUserId);
        _crashlyticsHelper.setKeys(
          companyId: user.companyId,
          propertyId: user.propertyId,
        );
        emit(
          state.copyWith(
            userStatus: UserStatus.success,
            user: user,
          ),
        );
      },
    );
  }

  void _onRestartUserEvent(
    _RestartUserEvent event,
    Emitter<UserState> emit,
  ) {
    emit(
      state.copyWith(
        userStatus: UserStatus.initial,
      ),
    );
  }
}
