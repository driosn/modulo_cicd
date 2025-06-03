import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/shared/data/secure_storage.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/core/shared/formz_inputs/confirm_new_password_input.dart';
import 'package:resident_app/core/shared/formz_inputs/confirm_password_input.dart';
import 'package:resident_app/core/shared/formz_inputs/formz_inputs.dart';
import 'package:resident_app/core/shared/formz_inputs/name_input.dart';
import 'package:resident_app/core/shared/helpers/error_messages_helper.dart';
import 'package:resident_app/core/shared/helpers/ma_validation_helper.dart';
import 'package:resident_app/features/contact_information/data/models/password_update_params_model.dart';
import 'package:resident_app/features/contact_information/domain/entities/contact_information_update_params.dart';
import 'package:resident_app/features/contact_information/domain/repositories/contact_information_repository.dart';
import 'package:resident_app/features/contact_information/presentation/models/contact_information_models.dart';
import 'package:resident_app/features/contact_information/presentation/models/us_state.dart';
import 'package:resident_app/features/demo/presentation/legacy_views/create_password/presentation/enums/criteria_state.dart';
import 'package:resident_app/features/user/domain/user_domain.dart';

part 'contact_information_edit_bloc.freezed.dart';
part 'contact_information_edit_event.dart';
part 'contact_information_edit_state.dart';

class ContactInformationEditBloc
    extends Bloc<ContactInformationEditEvent, ContactInformationEditState> {
  ContactInformationEditBloc({
    required UserRepository userRepository,
    required ContactInformationRepository contactInformationRepository,
    required ErrorMessagesHelper errorMessagesHelper,
    required SecureStorageWrapper storageWrapper,
  })  : _userRepository = userRepository,
        _contactInformationRepository = contactInformationRepository,
        _errorMessagesHelper = errorMessagesHelper,
        _storageWrapper = storageWrapper,
        super(ContactInformationEditState()) {
    //
    // Inits
    //
    on<_InitFromSiteEvent>(_onInitFromSiteEvent);

    //
    // Setters
    //
    on<_SetEmailEvent>(_onSetEmailEvent);
    on<_SetUsernameEvent>(_onSetUsernameEvent);
    on<_SetPasswordEvent>(_onSetPasswordEvent);
    on<_SetNewPasswordEvent>(_onSetNewPasswordEvent);
    on<_SetNewPasswordConfirmationEvent>(_onSetNewPasswordConfirmationEvent);
    on<_SetCellPhoneEvent>(_onSetCellPhoneEvent);
    on<_SetHomePhoneEvent>(_onSetHomePhoneEvent);
    on<_SetAddressEvent>(_onSetAddressEvent);
    on<_SetCityEvent>(_onSetCityEvent);
    on<_SetPostalCodeEvent>(_onSetPostalCodeEvent);
    on<_SetUSStateEvent>(_onSetUSStateEvent);
    on<_SetUpdateStatusEvent>(_onSetUpdateStatusEvent);
    on<_SetDefaultUsernameEvent>(_onSetDefaultUsernameEvent);
    on<_SetDefaultPasswordEvent>(_onSetDefaultPasswordEvent);
    on<_SetDefaultEmailEvent>(_onSetDefaultEmailEvent);
    on<_SetUseSiteAddressEvent>(_onSetUseSiteAdressEvent);
    on<_CleanSiteAddressEvent>(_onCleanSiteAddressEvent);

    //
    // Validators
    //
    on<_ValidateEmailEvent>(_onValidateEmailEvent);
    on<_ValidateCellPhoneEvent>(_onValidateCellPhoneEvent);
    on<_ValidateHomePhoneEvent>(_onValidateHomePhoneEvent);
    on<_ValidateUsernameEvent>(_onValidateUsernameEvent);
    on<_ValidateAddressEvent>(_onValidateAddressEvent);
    on<_ValidateCityEvent>(_onValidateCityEvent);
    on<_ValidateStateEvent>(_onValidateStateEvent);
    on<_ValidatePostalCodeEvent>(_onValidatePostalCodeEvent);
    on<_ValidatePasswordEvent>(_onValidatePasswordEvent);
    on<_ValidatePasswordUpdateEvent>(_onValidatePasswordUpdateEvent);
    on<_ValidateAllFormEvent>(_onValidateAllFormEvent);

    //
    // Api updates
    //
    on<_UpdateEvent>(_onUpdateEvent);
    on<_UpdateEmailEvent>(_onUpdateEmailEvent);
    on<_UpdateUsernameEvent>(_onUpdateUsernameEvent);
    on<_UpdatePasswordEvent>(_onUpdatePasswordEvent);
  }

  final UserRepository _userRepository;
  final ContactInformationRepository _contactInformationRepository;
  final ErrorMessagesHelper _errorMessagesHelper;
  final SecureStorageWrapper _storageWrapper;

  void _onInitFromSiteEvent(
    _InitFromSiteEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    final Resident resident = event.site.resident;

    final formatter = MaskedInputFormatter('(000) 000-0000');
    final formattedCellPhone = formatter.applyMask(resident.cellPhone).text;
    final formattedHomePhone = formatter.applyMask(resident.homePhone).text;
    if (resident.useBillingAddress) {
      emit(
        state.copyWith(
          email: EmailInput.dirty(resident.residentEmail),
          cellPhone: PhoneInput.dirty(formattedCellPhone),
          homePhone: PhoneInput.dirty(formattedHomePhone),
          // Use site address not selected
          address: AddressInput.dirty(resident.billingAddress),
          city: CityInput.dirty(resident.billingCity),
          usState: event.state,
          postalCode: PostalCodeInput.dirty(resident.billingPostalCode),
          emailErrorMessage: null,
          cellPhoneErrorMessage: null,
          homePhoneErrorMessage: null,
          addressErrorMessage: null,
          cityErrorMessage: null,
          usStateErrorMessage: null,
          postalCodeErrorMessage: null,
          isAllFormValid: false,
        ),
      );
    } else {
      emit(
        state.copyWith(
          email: EmailInput.dirty(resident.residentEmail),
          cellPhone: PhoneInput.dirty(formattedCellPhone),
          homePhone: PhoneInput.dirty(formattedHomePhone),
          // Use site address selected
          address: AddressInput.pure(),
          city: CityInput.pure(),
          usState: USState(name: "", value: ""),
          postalCode: PostalCodeInput.pure(),
          emailErrorMessage: null,
          cellPhoneErrorMessage: null,
          homePhoneErrorMessage: null,
          addressErrorMessage: null,
          cityErrorMessage: null,
          usStateErrorMessage: null,
          postalCodeErrorMessage: null,
          isAllFormValid: false,
        ),
      );
    }
  }

  void _onSetUseSiteAdressEvent(
    _SetUseSiteAddressEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    emit(
      state.copyWith(
        useSiteAddress: event.value,
      ),
    );
  }

  void _onCleanSiteAddressEvent(
    _CleanSiteAddressEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    emit(
      state.copyWith(
        address: AddressInput.pure(),
        city: CityInput.pure(),
        usState: USState(name: "", value: ""),
        postalCode: PostalCodeInput.pure(),
        addressErrorMessage: null,
        cityErrorMessage: null,
        usStateErrorMessage: null,
        postalCodeErrorMessage: null,
      ),
    );
  }

  void _onSetEmailEvent(
    _SetEmailEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    emit(
      state.copyWith(
        email: EmailInput.dirty(event.email),
      ),
    );
  }

  void _onSetUsernameEvent(
    _SetUsernameEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    emit(
      state.copyWith(
        username: NameInput.dirty(event.username),
      ),
    );
  }

  void _onSetPasswordEvent(
    _SetPasswordEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    emit(
      state.copyWith(
        currentPassword: CurrentPasswordInput.dirty(event.password),
      ),
    );
  }

  void _onSetNewPasswordEvent(
    _SetNewPasswordEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    emit(
      state.copyWith(
        newPassword: PasswordInput.dirty(event.newPassword),
        newPasswordConfirmation: ConfirmNewPasswordInput.dirty(
          PasswordInput.dirty(event.newPassword),
          state.newPasswordConfirmation.value,
        ),
      ),
    );
  }

  void _onSetNewPasswordConfirmationEvent(
    _SetNewPasswordConfirmationEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    emit(
      state.copyWith(
        newPasswordConfirmation: ConfirmNewPasswordInput.dirty(
          state.newPassword,
          event.newPasswordConfirmation,
        ),
      ),
    );
  }

  void _onValidateEmailEvent(
    ContactInformationEditEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    final emailErrorMessage =
        _errorMessagesHelper.email[state.email.validator(state.email.value)];
    emit(
      state.copyWith(
        emailErrorMessage: emailErrorMessage,
      ),
    );
  }

  void _onSetCellPhoneEvent(
    _SetCellPhoneEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    emit(
      state.copyWith(
        cellPhone: PhoneInput.dirty(event.cellPhone),
      ),
    );
  }

  void _onValidateCellPhoneEvent(
    ContactInformationEditEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    final cellPhoneErrorMessage = _errorMessagesHelper
        .phone[state.cellPhone.validator(state.cellPhone.value)];
    emit(
      state.copyWith(
        cellPhoneErrorMessage: cellPhoneErrorMessage,
      ),
    );
  }

  void _onSetHomePhoneEvent(
    _SetHomePhoneEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    emit(
      state.copyWith(
        homePhone: PhoneInput.dirty(event.homePhone),
      ),
    );
  }

  void _onValidateHomePhoneEvent(
    ContactInformationEditEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    final homePhoneErrorMessage = _errorMessagesHelper
        .phone[state.homePhone.validator(state.homePhone.value)];
    emit(
      state.copyWith(
        homePhoneErrorMessage: homePhoneErrorMessage,
      ),
    );
  }

  void _onSetAddressEvent(
    _SetAddressEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    emit(
      state.copyWith(
        address: AddressInput.dirty(event.address),
      ),
    );
  }

  void _onSetCityEvent(
    _SetCityEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    emit(
      state.copyWith(
        city: CityInput.dirty(event.city),
      ),
    );
  }

  void _onSetPostalCodeEvent(
    _SetPostalCodeEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    emit(
      state.copyWith(
        postalCode: PostalCodeInput.dirty(event.postalCode),
      ),
    );
  }

  void _onSetUSStateEvent(
    _SetUSStateEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    emit(
      state.copyWith(
        usState: event.state,
        usStateErrorMessage: null,
      ),
    );
  }

  void _onSetUpdateStatusEvent(
    _SetUpdateStatusEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    emit(
      state.copyWith(
        updateStatus: event.status,
      ),
    );
  }

  void _onSetDefaultUsernameEvent(
    _SetDefaultUsernameEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    emit(
      state.copyWith(
        username: NameInput.dirty(event.username),
        updateStatus: const _Initial(),
        usernameErrorMessage: null,
      ),
    );
  }

  void _onSetDefaultPasswordEvent(
    _SetDefaultPasswordEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    emit(
      state.copyWith(
        currentPassword: CurrentPasswordInput.pure(),
        newPassword: PasswordInput.pure(),
        newPasswordConfirmation:
            ConfirmNewPasswordInput.pure(PasswordInput.pure()),
        updateStatus: const _Initial(),
        currentPasswordErrorMessage: null,
        newPasswordErrorMessage: null,
        newPasswordConfirmationErrorMessage: null,
        charactersState: CriteriaState.clean,
        atLeastNumberState: CriteriaState.clean,
        atLeastSymbolState: CriteriaState.clean,
        isRequired: CriteriaState.clean,
      ),
    );
  }

  void _onSetDefaultEmailEvent(
    _SetDefaultEmailEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    emit(
      state.copyWith(
        email: EmailInput.dirty(event.email),
        updateStatus: const _Initial(),
        emailErrorMessage: null,
      ),
    );
  }

  void _onValidateAddressEvent(
    ContactInformationEditEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    final addressErrorMessage = _errorMessagesHelper
        .address[state.address.validator(state.address.value)];
    emit(
      state.copyWith(
        addressErrorMessage: addressErrorMessage,
      ),
    );
  }

  void _onValidateUsernameEvent(
    ContactInformationEditEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    final usernameErrorMessage = _errorMessagesHelper
        .name[state.username.validator(state.username.value)];
    emit(
      state.copyWith(
        usernameErrorMessage: usernameErrorMessage,
      ),
    );
  }

  void _onValidateCityEvent(
    ContactInformationEditEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    final cityErrorMessage =
        _errorMessagesHelper.city[state.city.validator(state.city.value)];
    emit(
      state.copyWith(
        cityErrorMessage: cityErrorMessage,
      ),
    );
  }

  void _onValidatePostalCodeEvent(
    ContactInformationEditEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    final postalCodeErrorMessage = _errorMessagesHelper
        .postalCode[state.postalCode.validator(state.postalCode.value)];
    emit(
      state.copyWith(
        postalCodeErrorMessage: postalCodeErrorMessage,
      ),
    );
  }

  void _onValidateStateEvent(
    ContactInformationEditEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    emit(
      state.copyWith(
        usStateErrorMessage: state.usState!.name.isEmpty
            ? _errorMessagesHelper.stateEmptyValidation
            : null,
      ),
    );
  }

  void _onValidateAllFormEvent(
    _ValidateAllFormEvent event,
    Emitter<ContactInformationEditState> emit,
  ) {
    late bool allFormValidation;

    if (state.useSiteAddress) {
      _onValidateEmailEvent(event, emit);
      _onValidateCellPhoneEvent(event, emit);
      _onValidateHomePhoneEvent(event, emit);
      allFormValidation = state.emailErrorMessage == null &&
          state.cellPhoneErrorMessage == null &&
          state.homePhoneErrorMessage == null;
    } else {
      _onValidateEmailEvent(event, emit);
      _onValidateCellPhoneEvent(event, emit);
      _onValidateHomePhoneEvent(event, emit);
      _onValidateAddressEvent(event, emit);
      _onValidateCityEvent(event, emit);
      _onValidatePostalCodeEvent(event, emit);
      _onValidateStateEvent(event, emit);
      allFormValidation = state.emailErrorMessage == null &&
          state.cellPhoneErrorMessage == null &&
          state.homePhoneErrorMessage == null &&
          state.addressErrorMessage == null &&
          state.cityErrorMessage == null &&
          state.postalCodeErrorMessage == null &&
          state.usStateErrorMessage == null;
    }

    emit(
      state.copyWith(
        isAllFormValid: allFormValidation,
      ),
    );
  }

  void _onValidatePasswordEvent(
    _ValidatePasswordEvent event,
    Emitter<ContactInformationEditState> emit,
  ) async {
    MAValidationHelper validator = MAValidationHelper();
    final validations = validator.validateAllPassword(event.password);
    emit(
      state.copyWith(
        charactersState: validations.contains(PasswordError.charactersLong)
            ? CriteriaState.error
            : CriteriaState.ok,
        atLeastNumberState: validations.contains(PasswordError.atLeastNumber)
            ? CriteriaState.error
            : CriteriaState.ok,
        atLeastSymbolState: validations.contains(PasswordError.atLeastSymbol)
            ? CriteriaState.error
            : CriteriaState.ok,
      ),
    );
  }

  void _onValidatePasswordUpdateEvent(
    _ValidatePasswordUpdateEvent event,
    Emitter<ContactInformationEditState> emit,
  ) async {
    final passwordErrorMessage = _errorMessagesHelper.currentPassword[
        state.currentPassword.validator(state.currentPassword.value)];
    final newPasswordErrorMessage = _errorMessagesHelper
        .password[state.newPassword.validator(state.newPassword.value)];
    final newPasswordConfirmatioErrorMessage =
        _errorMessagesHelper.confirmNewPassword[state.newPasswordConfirmation
            .validator(state.newPasswordConfirmation.value)];
    emit(
      state.copyWith(
        currentPasswordErrorMessage: passwordErrorMessage,
        newPasswordErrorMessage: newPasswordErrorMessage,
        newPasswordConfirmationErrorMessage: newPasswordConfirmatioErrorMessage,
      ),
    );
    MAValidationHelper validator = MAValidationHelper();

    final validations = validator.validateAllPassword(state.newPassword.value);

    if (validations.contains(PasswordError.isRequired)) {
      emit(
        state.copyWith(
          charactersState: CriteriaState.clean,
          atLeastNumberState: CriteriaState.clean,
          atLeastSymbolState: CriteriaState.clean,
        ),
      );
    } else {
      emit(
        state.copyWith(
          charactersState: validations.contains(PasswordError.charactersLong)
              ? CriteriaState.error
              : CriteriaState.ok,
          atLeastNumberState: validations.contains(PasswordError.atLeastNumber)
              ? CriteriaState.error
              : CriteriaState.ok,
          atLeastSymbolState: validations.contains(PasswordError.atLeastSymbol)
              ? CriteriaState.error
              : CriteriaState.ok,
        ),
      );
    }
  }

  void _onUpdateEvent(
    _UpdateEvent event,
    Emitter<ContactInformationEditState> emit,
  ) async {
    emit(
      state.copyWith(
        isAllFormValid: false,
        updateStatus: const _Updating(),
      ),
    );
    late ContactInformationUpdateParams updateParams;

    if (!state.useSiteAddress) {
      updateParams = ContactInformationUpdateParams(
        residentId: event.residentId,
        emailAddress: state.email.value.trim(),
        homePhone: state.homePhone.value,
        cellPhone: state.cellPhone.value,
        useBillingAddress: true,
        billingAddress: state.address.value,
        billingCity: state.city.value,
        billingState: state.usState!.value,
        billingPostalCode: state.postalCode.value,
      );
    } else {
      updateParams = ContactInformationUpdateParams(
        residentId: event.residentId,
        emailAddress: state.email.value.trim(),
        homePhone: state.homePhone.value,
        cellPhone: state.cellPhone.value,
        useBillingAddress: false,
        billingAddress: "",
        billingCity: "",
        billingState: "",
        billingPostalCode: "",
      );
    }

    final failureOrSuccess =
        await _contactInformationRepository.update(updateParams);

    failureOrSuccess.fold(
      (error) => emit(
        state.copyWith(
          updateStatus: _Failure(error),
        ),
      ),
      (success) => emit(
        state.copyWith(
          updateStatus: _Success(),
        ),
      ),
    );
  }

  void _onUpdatePasswordEvent(
    _UpdatePasswordEvent event,
    Emitter<ContactInformationEditState> emit,
  ) async {
    emit(
      state.copyWith(
        updateStatus: const _Updating(),
      ),
    );
    PasswordUpdateParamsModel passwordUpdateParamsModel =
        PasswordUpdateParamsModel(
      residentUserId: event.residentUserId,
      currentPassword: state.currentPassword.value,
      newPassword: state.newPassword.value,
    );
    final failureOrSuccess = await _contactInformationRepository.updatePassword(
      passwordUpdateParamsModel,
    );

    failureOrSuccess.fold(
      (error) => emit(
        state.copyWith(
          updateStatus: _Failure(error),
        ),
      ),
      (success) => emit(
        state.copyWith(
          updateStatus: _SuccessPassword(),
        ),
      ),
    );
  }

  void _onUpdateEmailEvent(
    _UpdateEmailEvent event,
    Emitter<ContactInformationEditState> emit,
  ) async {
    emit(
      state.copyWith(
        updateStatus: const _Updating(),
      ),
    );

    final failureOrSuccess = await _contactInformationRepository.updateEmail(
      newEmail: event.newEmail,
      residentUserId: event.residentUserId,
    );

    failureOrSuccess.fold(
      (error) => emit(
        state.copyWith(
          updateStatus: _Failure(error),
        ),
      ),
      (success) => emit(
        state.copyWith(
          updateStatus: _SuccessEmail(),
        ),
      ),
    );
  }

  void _onUpdateUsernameEvent(
    _UpdateUsernameEvent event,
    Emitter<ContactInformationEditState> emit,
  ) async {
    emit(
      state.copyWith(
        updateStatus: const _Updating(),
      ),
    );

    final failureOrSuccess = await _contactInformationRepository.updateUsername(
      newUsername: event.newUsername,
      residentUserId: event.residentUserId,
    );

    failureOrSuccess.fold(
      (error) => emit(
        state.copyWith(
          updateStatus: _Failure(error),
        ),
      ),
      (success) => emit(
        state.copyWith(
          updateStatus: _SuccessUsername(),
        ),
      ),
    );
  }
}
