part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getUser() = _GetUserEvent;
  const factory UserEvent.setUser(User user) = _SetUserEvent;
  const factory UserEvent.setUsername(String username) = _SetUsernameEvent;
  const factory UserEvent.setEmail(String email) = _SetEmailEvent;
  const factory UserEvent.setNotificationLanguagePreferenceType(
    Language language,
  ) = _SetNotificationLanguagePreferenceTypeEvent;
  const factory UserEvent.setContactInformation({
    required String residentEmail,
    required String cellPhone,
    required String homePhone,
    required bool useBillingAddress,
    required String billingAddress,
    required String billingCity,
    required String billingState,
    required String billingPostalCode,
  }) = _SetContactInformationEvent;
  const factory UserEvent.restart() = _RestartUserEvent;
}
