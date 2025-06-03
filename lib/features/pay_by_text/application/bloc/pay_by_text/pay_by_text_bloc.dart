import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/data/models/account_type.dart';
import 'package:resident_app/core/shared/formz_inputs/account_number_input.dart';
import 'package:resident_app/core/shared/formz_inputs/confirm_account_number_input.dart';
import 'package:resident_app/core/shared/formz_inputs/formz_inputs.dart';
import 'package:resident_app/core/shared/formz_inputs/institution_number_input.dart';
import 'package:resident_app/core/shared/formz_inputs/name_input.dart';
import 'package:resident_app/core/shared/formz_inputs/routing_number_input.dart';
import 'package:resident_app/core/shared/formz_inputs/transit_number_input.dart';
import 'package:resident_app/core/shared/helpers/error_messages_helper.dart';
import 'package:resident_app/features/pay_by_text/presentation/enums/mobile_number_enums.dart';

part 'pay_by_text_bloc.freezed.dart';
part 'pay_by_text_event.dart';
part 'pay_by_text_state.dart';

class PayByTextBloc extends Bloc<PayByTextEvent, PayByTextState> {
  PayByTextBloc({
    required ErrorMessagesHelper errorMessagesHelper,
  })  : _errorMessagesHelper = errorMessagesHelper,
        super(const PayByTextState()) {
    on<_PayByTextEventConfigure>(_onSetUpCompleted);
    on<_SetNameEvent>(_onSetNameEvent);
    on<_SetAccountTypeEvent>(_onSetAccountTypeEvent);
    on<_SetRoutingNumberEvent>(_onSetRoutingNumberEvent);
    on<_SetTransitNumberEvent>(_onSetTransitNumberEvent);
    on<_SetInstitutionNumberEvent>(_onSetInstitutionNumberEvent);
    on<_SetAccountNumberEvent>(_onSetAccountNumberEvent);
    on<_SetConfirmAccountNumberEvent>(_onSetConfirmAccountNumberEvent);
    on<_SetMobilePhoneType>(_onSetMobilePhoneType);
    on<_SetMobilePhoneEvent>(_onSetMobilePhoneEvent);
    on<_SetAllFieldsAreValidate>(_onSetAllFieldsAreValidate);
    on<_SetMobilePhoneValidate>(_onSetMobilePhoneValidate);
    on<_SetupIsPayByText>(_onSetupIsPayByText);
    on<_ValidateNameEvent>(_onValidateNameEvent);
    on<_ValidateRoutingNumberEvent>(_onValidateRoutingNumberEvent);
    on<_ValidateTransitNumberEvent>(_onValidateTransitNumberEvent);
    on<_ValidateInstitutionNumberEvent>(_onValidateInstitutionNumberEvent);
    on<_ValidateAccountNumberEvent>(_onValidateAccountNumberEvent);
    on<_ValidateConfirmAccountNumberEvent>(
        _onValidateConfirmAccountNumberEvent);
    on<_ValidateAllFormEvent>(_onValidateAllFormEvent);
    on<_ValidateAllFormRBCEvent>(_onValidateAllFormRBCEvent);
    on<_ValidateMobilePhoneEvent>(_onValidateMobilePhoneEvent);
    on<_SetSetupIsCompletedEvent>(_onSetSetupIsCompletedEvent);
    on<_SetLatestPaymentAccountSettingsEvent>(
        _onSetLatestPaymentAccountSettingsEvent);
    on<_SetCurrentPaymentAccountSettings>(_onSetCurrentPaymentAccountSettings);
    on<_ResetPaymentAccountSettingsEvent>(_onResetPaymentAccountSettingsEvent);
    on<_ResetPayByTextEvent>(_onResetPayByTextEvent);
  }

  final ErrorMessagesHelper _errorMessagesHelper;

  void _onResetPayByTextEvent(
    _ResetPayByTextEvent event,
    Emitter<PayByTextState> emit,
  ) async {
    emit(state.copyWith(
      name: const NameInput.pure(),
      accountType: const AccountType(name: "Checking", value: "CV"),
      routingNumber: const RoutingNumberInput.pure(),
      transitNumber: const TransitNumberInput.pure(),
      institutionNumber: const InstitutionNumberInput.pure(),
      accountNumber: const AccountNumberInput.pure(),
      confirmAccountNumber:
          const ConfirmAccountNumberInput.pure(AccountNumberInput.pure()),
      mobilePhone: const PhoneInput.pure(),
      setUpIsCompleted: false,
      nameErrorMessage: null,
      routingNumberErrorMessage: null,
      transitNumberErrorMessage: null,
      institutionNumberErrorMessage: null,
      accountNumberErrorMessage: null,
      confirmAccountNumberErrorMessage: null,
      allFieldsAreValidate: false,
      mobilePhoneErrorMessage: null,
      mobilePhoneIsValidate: false,
      latestPayByTextState: null,
      isSetUpPayByText: false,
    ));
  }

  void _onSetUpCompleted(
      _PayByTextEventConfigure event, Emitter<PayByTextState> emit) async {
    emit(state.copyWith(setUpIsCompleted: false));
  }

  void _onSetNameEvent(
    _SetNameEvent event,
    Emitter<PayByTextState> emit,
  ) {
    emit(
      state.copyWith(
        name: NameInput.dirty(event.name),
      ),
    );
  }

  void _onSetAccountTypeEvent(
    _SetAccountTypeEvent event,
    Emitter<PayByTextState> emit,
  ) {
    emit(
      state.copyWith(
        accountType: event.accountType,
      ),
    );
  }

  void _onValidateNameEvent(
    PayByTextEvent event,
    Emitter<PayByTextState> emit,
  ) {
    final nameErrorMessage =
        _errorMessagesHelper.name[state.name.validator(state.name.value)];
    emit(
      state.copyWith(
        nameErrorMessage: nameErrorMessage,
      ),
    );
  }

  void _onSetRoutingNumberEvent(
    _SetRoutingNumberEvent event,
    Emitter<PayByTextState> emit,
  ) {
    emit(
      state.copyWith(
        routingNumber: RoutingNumberInput.dirty(event.routingNumber),
      ),
    );
  }

  void _onValidateRoutingNumberEvent(
    PayByTextEvent event,
    Emitter<PayByTextState> emit,
  ) {
    final routingNumberErrorMessage = _errorMessagesHelper.routingNumber[
        state.routingNumber.validator(state.routingNumber.value)];
    emit(
      state.copyWith(
        routingNumberErrorMessage: routingNumberErrorMessage,
      ),
    );
  }

  void _onSetTransitNumberEvent(
    _SetTransitNumberEvent event,
    Emitter<PayByTextState> emit,
  ) {
    emit(
      state.copyWith(
        transitNumber: TransitNumberInput.dirty(event.transitNumber),
      ),
    );
  }

  void _onValidateTransitNumberEvent(
    PayByTextEvent event,
    Emitter<PayByTextState> emit,
  ) {
    final transitNumberErrorMessage = _errorMessagesHelper.transitNumber[
        state.transitNumber.validator(state.transitNumber.value)];
    emit(
      state.copyWith(
        transitNumberErrorMessage: transitNumberErrorMessage,
      ),
    );
  }

  void _onSetInstitutionNumberEvent(
    _SetInstitutionNumberEvent event,
    Emitter<PayByTextState> emit,
  ) {
    emit(
      state.copyWith(
        institutionNumber:
            InstitutionNumberInput.dirty(event.institutionNumber),
      ),
    );
  }

  void _onValidateInstitutionNumberEvent(
    PayByTextEvent event,
    Emitter<PayByTextState> emit,
  ) {
    final institutionNumberErrorMessage =
        _errorMessagesHelper.institutionNumber[
            state.institutionNumber.validator(state.institutionNumber.value)];
    emit(
      state.copyWith(
        institutionNumberErrorMessage: institutionNumberErrorMessage,
      ),
    );
  }

  void _onSetAccountNumberEvent(
    _SetAccountNumberEvent event,
    Emitter<PayByTextState> emit,
  ) {
    emit(
      state.copyWith(
        accountNumber: AccountNumberInput.dirty(event.accountNumber),
      ),
    );
  }

  void _onValidateAccountNumberEvent(
    PayByTextEvent event,
    Emitter<PayByTextState> emit,
  ) {
    final accountNumberErrorMessage = _errorMessagesHelper.accountNumber[
        state.accountNumber.validator(state.accountNumber.value)];
    emit(
      state.copyWith(
        accountNumberErrorMessage: accountNumberErrorMessage,
      ),
    );
  }

  void _onSetConfirmAccountNumberEvent(
    _SetConfirmAccountNumberEvent event,
    Emitter<PayByTextState> emit,
  ) {
    emit(
      state.copyWith(
        confirmAccountNumber: ConfirmAccountNumberInput.dirty(
            state.accountNumber, event.confirmAccountNumber),
      ),
    );
  }

  void _onSetMobilePhoneType(
    _SetMobilePhoneType event,
    Emitter<PayByTextState> emit,
  ) {
    emit(
      state.copyWith(
        mobilePhoneType: event.mobilePhoneType,
      ),
    );
  }

  void _onSetMobilePhoneEvent(
    _SetMobilePhoneEvent event,
    Emitter<PayByTextState> emit,
  ) {
    emit(
      state.copyWith(
        mobilePhone: PhoneInput.dirty(event.mobilePhone),
      ),
    );
  }

  void _onValidateConfirmAccountNumberEvent(
    PayByTextEvent event,
    Emitter<PayByTextState> emit,
  ) {
    final confirmAccountNumberErrorMessage = _errorMessagesHelper
            .confirmAccountNumber[
        state.confirmAccountNumber.validator(state.confirmAccountNumber.value)];
    emit(
      state.copyWith(
        confirmAccountNumberErrorMessage: confirmAccountNumberErrorMessage,
      ),
    );
  }

  void _onValidateAllFormEvent(
    _ValidateAllFormEvent event,
    Emitter<PayByTextState> emit,
  ) {
    _onValidateNameEvent(event, emit);
    _onValidateRoutingNumberEvent(event, emit);
    _onValidateAccountNumberEvent(event, emit);
    _onValidateConfirmAccountNumberEvent(event, emit);
    if (state.nameErrorMessage == null &&
        state.routingNumberErrorMessage == null &&
        state.accountNumberErrorMessage == null &&
        state.confirmAccountNumberErrorMessage == null) {
      emit(state.copyWith(allFieldsAreValidate: true));
    } else {
      emit(state.copyWith(allFieldsAreValidate: false));
    }
  }

  void _onValidateAllFormRBCEvent(
    _ValidateAllFormRBCEvent event,
    Emitter<PayByTextState> emit,
  ) {
    _onValidateNameEvent(event, emit);
    _onValidateInstitutionNumberEvent(event, emit);
    _onValidateTransitNumberEvent(event, emit);
    _onValidateAccountNumberEvent(event, emit);
    _onValidateConfirmAccountNumberEvent(event, emit);
    if (state.nameErrorMessage == null &&
        state.transitNumberErrorMessage == null &&
        state.institutionNumberErrorMessage == null &&
        state.accountNumberErrorMessage == null &&
        state.confirmAccountNumberErrorMessage == null) {
      emit(state.copyWith(allFieldsAreValidate: true));
    } else {
      emit(state.copyWith(allFieldsAreValidate: false));
    }
  }

  void _onValidateMobilePhoneEvent(
    _ValidateMobilePhoneEvent event,
    Emitter<PayByTextState> emit,
  ) {
    final mobilePhoneErrorMessage = _errorMessagesHelper
        .phone[state.mobilePhone.validator(state.mobilePhone.value)];
    emit(
      state.copyWith(
        mobilePhoneErrorMessage: mobilePhoneErrorMessage,
      ),
    );
    final mobilePhoneIsValidate =
        mobilePhoneErrorMessage == null ? true : false;
    emit(
      state.copyWith(
        mobilePhoneIsValidate: mobilePhoneIsValidate,
      ),
    );
  }

  void _onSetAllFieldsAreValidate(
    _SetAllFieldsAreValidate event,
    Emitter<PayByTextState> emit,
  ) {
    emit(
      state.copyWith(
        allFieldsAreValidate: false,
      ),
    );
  }

  void _onSetMobilePhoneValidate(
    _SetMobilePhoneValidate event,
    Emitter<PayByTextState> emit,
  ) {
    emit(
      state.copyWith(
        mobilePhoneIsValidate: false,
      ),
    );
  }

  FutureOr<void> _onSetSetupIsCompletedEvent(
    _SetSetupIsCompletedEvent event,
    Emitter<PayByTextState> emit,
  ) {
    emit(
      state.copyWith(
        setUpIsCompleted: event.isCompleted,
      ),
    );
  }

  FutureOr<void> _onSetLatestPaymentAccountSettingsEvent(
    _SetLatestPaymentAccountSettingsEvent event,
    Emitter<PayByTextState> emit,
  ) {
    emit(
      state.copyWith(
        latestPayByTextState: state,
      ),
    );
  }

  FutureOr<void> _onSetCurrentPaymentAccountSettings(
    _SetCurrentPaymentAccountSettings event,
    Emitter<PayByTextState> emit,
  ) {
    if (state.latestPayByTextState != null) {
      emit(state.latestPayByTextState!);
    }
  }

  FutureOr<void> _onResetPaymentAccountSettingsEvent(
    _ResetPaymentAccountSettingsEvent event,
    Emitter<PayByTextState> emit,
  ) {
    emit(state.copyWith(
      name: const NameInput.pure(),
      accountType: const AccountType(name: "Checking", value: "CV"),
      routingNumber: const RoutingNumberInput.pure(),
      transitNumber: const TransitNumberInput.pure(),
      institutionNumber: const InstitutionNumberInput.pure(),
      accountNumber: const AccountNumberInput.pure(),
      confirmAccountNumber:
          const ConfirmAccountNumberInput.pure(AccountNumberInput.pure()),
      isSetUpPayByText: false,
    ));
  }

  void _onSetupIsPayByText(
    _SetupIsPayByText event,
    Emitter<PayByTextState> emit,
  ) {
    emit(state.copyWith(isSetUpPayByText: event.isSetUpPayByText));
  }
}
