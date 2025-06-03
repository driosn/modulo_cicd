part of 'contact_information_edit_bloc.dart';

@freezed
class ContactInformationEditEvent with _$ContactInformationEditEvent {
  //
  // Inits
  //
  const factory ContactInformationEditEvent.initFromSite({
    required PrimarySite site,
    required USState state,
  }) = _InitFromSiteEvent;

  //
  // Setters
  //
  const factory ContactInformationEditEvent.setEmail(String email) =
      _SetEmailEvent;
  const factory ContactInformationEditEvent.setUsername(String username) =
      _SetUsernameEvent;
  const factory ContactInformationEditEvent.setPassword(String password) =
      _SetPasswordEvent;
  const factory ContactInformationEditEvent.setNewPassword(String newPassword) =
      _SetNewPasswordEvent;
  const factory ContactInformationEditEvent.setNewPasswordConfirmation(
      String newPasswordConfirmation) = _SetNewPasswordConfirmationEvent;

  const factory ContactInformationEditEvent.setCellPhone(String cellPhone) =
      _SetCellPhoneEvent;
  const factory ContactInformationEditEvent.setHomePhone(String homePhone) =
      _SetHomePhoneEvent;
  const factory ContactInformationEditEvent.setAddress(String address) =
      _SetAddressEvent;
  const factory ContactInformationEditEvent.setCity(String city) =
      _SetCityEvent;
  const factory ContactInformationEditEvent.setPostalCode(String postalCode) =
      _SetPostalCodeEvent;
  const factory ContactInformationEditEvent.setUSState(USState state) =
      _SetUSStateEvent;
  const factory ContactInformationEditEvent.setUpdateStatus(
    ContactInformationUpdateStatus status,
  ) = _SetUpdateStatusEvent;
  const factory ContactInformationEditEvent.setDefaultUsername(
    String username,
  ) = _SetDefaultUsernameEvent;
  const factory ContactInformationEditEvent.setDefaultPassword() =
      _SetDefaultPasswordEvent;
  const factory ContactInformationEditEvent.setDefaultEmail(
    String email,
  ) = _SetDefaultEmailEvent;
  const factory ContactInformationEditEvent.setUseSiteAddress(bool value) =
      _SetUseSiteAddressEvent;
  const factory ContactInformationEditEvent.cleanSiteAddress() =
      _CleanSiteAddressEvent;

  //
  // Validators
  //
  const factory ContactInformationEditEvent.validateEmail() =
      _ValidateEmailEvent;
  const factory ContactInformationEditEvent.validateUsername() =
      _ValidateUsernameEvent;
  const factory ContactInformationEditEvent.validateCellPhone() =
      _ValidateCellPhoneEvent;
  const factory ContactInformationEditEvent.validateHomePhone() =
      _ValidateHomePhoneEvent;
  const factory ContactInformationEditEvent.validateAddress() =
      _ValidateAddressEvent;
  const factory ContactInformationEditEvent.validateCity() = _ValidateCityEvent;
  const factory ContactInformationEditEvent.validatePostalCode() =
      _ValidatePostalCodeEvent;
  const factory ContactInformationEditEvent.validateState() =
      _ValidateStateEvent;
  const factory ContactInformationEditEvent.validatePassword(String password) =
      _ValidatePasswordEvent;
  const factory ContactInformationEditEvent.validatePasswordUpdate() =
      _ValidatePasswordUpdateEvent;
  const factory ContactInformationEditEvent.validateAllForm() =
      _ValidateAllFormEvent;

  //
  // Api updates
  //
  const factory ContactInformationEditEvent.update({
    required String residentId,
    Site? site,
  }) = _UpdateEvent;
  const factory ContactInformationEditEvent.updateEmail({
    required String newEmail,
    required String residentUserId,
  }) = _UpdateEmailEvent;
  const factory ContactInformationEditEvent.updateUsername({
    required String newUsername,
    required String residentUserId,
  }) = _UpdateUsernameEvent;
  const factory ContactInformationEditEvent.updatePassword({
    required String residentUserId,
  }) = _UpdatePasswordEvent;
}
