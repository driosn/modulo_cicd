part of 'contact_information_edit_bloc.dart';

@freezed
class ContactInformationEditState with _$ContactInformationEditState {
  factory ContactInformationEditState({
    @Default(EmailInput.pure()) EmailInput email,
    @Default(NameInput.pure()) NameInput username,
    @Default(CurrentPasswordInput.pure()) CurrentPasswordInput currentPassword,
    @Default(PasswordInput.pure()) PasswordInput newPassword,
    @Default(ConfirmNewPasswordInput.pure(PasswordInput.pure()))
    ConfirmNewPasswordInput newPasswordConfirmation,
    @Default(PhoneInput.pure()) PhoneInput cellPhone,
    @Default(PhoneInput.pure()) PhoneInput homePhone,
    @Default(AddressInput.pure()) AddressInput address,
    @Default(CityInput.pure()) CityInput city,
    @Default(PostalCodeInput.pure()) PostalCodeInput postalCode,
    @Default(null) String? emailErrorMessage,
    @Default(null) String? usernameErrorMessage,
    @Default(null) String? currentPasswordErrorMessage,
    @Default(null) String? newPasswordErrorMessage,
    @Default(null) String? newPasswordConfirmationErrorMessage,
    @Default(null) String? cellPhoneErrorMessage,
    @Default(null) String? homePhoneErrorMessage,
    @Default(null) String? addressErrorMessage,
    @Default(null) String? cityErrorMessage,
    @Default(null) String? postalCodeErrorMessage,
    @Default(false) bool useSiteAddress,
    @Default(null) USState? usState,
    @Default(null) String? usStateErrorMessage,
    @Default(false) bool isAllFormValid,
    @Default(_Initial()) ContactInformationUpdateStatus updateStatus,
    @Default(CriteriaState.clean) CriteriaState charactersState,
    @Default(CriteriaState.clean) CriteriaState atLeastNumberState,
    @Default(CriteriaState.clean) CriteriaState atLeastSymbolState,
    @Default(CriteriaState.clean) CriteriaState isRequired,
  }) = _ContactInformationEditState;
}

@freezed
class ContactInformationUpdateStatus with _$ContactInformationUpdateStatus {
  const factory ContactInformationUpdateStatus.initial() = _Initial;
  const factory ContactInformationUpdateStatus.updating() = _Updating;
  const factory ContactInformationUpdateStatus.successUsername() =
      _SuccessUsername;
  const factory ContactInformationUpdateStatus.successEmail() = _SuccessEmail;
  const factory ContactInformationUpdateStatus.successPassword() =
      _SuccessPassword;
  const factory ContactInformationUpdateStatus.success() = _Success;
  const factory ContactInformationUpdateStatus.failure(MAError error) =
      _Failure;
}
