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
import 'package:resident_app/features/autopay/presentation/enums/autopay_enums.dart';
import 'package:resident_app/features/autopay/presentation/models/payment_date.dart';

part 'autopay_bloc.freezed.dart';
part 'autopay_event.dart';
part 'autopay_state.dart';

class AutoPayBloc extends Bloc<AutoPayEvent, AutoPayState> {
  AutoPayBloc({
    required ErrorMessagesHelper errorMessagesHelper,
  })  : _errorMessagesHelper = errorMessagesHelper,
        super(AutoPayState()) {
    on<_AutoPayEventConfigure>(_onSetUpCompleted);
    on<_SetNameEvent>(_onSetNameEvent);
    on<_SetAccountTypeEvent>(_onSetAccountTypeEvent);
    on<_SetRoutingNumberEvent>(_onSetRoutingNumberEvent);
    on<_SetTransitNumberEvent>(_onSetTransitNumberEvent);
    on<_SetInstitutionNumberEvent>(_onSetInstitutionNumberEvent);
    on<_SetAccountNumberEvent>(_onSetAccountNumberEvent);
    on<_SetConfirmAccountNumberEvent>(_onSetConfirmAccountNumberEvent);
    on<_SetWithdrawalAmountOptionEvent>(_onSetWithdrawalAmountOptionEvent);
    on<_SetWithdrawalAmountEvent>(_onSetWithdrawalAmountEvent);
    on<_SetPaymentDateEvent>(_onSetPaymentDateEvent);
    on<_SetAllFieldsAreValidate>(_onSetAllFieldsAreValidate);
    on<_SetupIsAutopay>(_onSetupIsAutopay);
    on<_SetPaymentTypeAutopaySettingsEvent>(
        _onSetPaymentTypeAutopaySettingsEvent);
    on<_ValidateNameEvent>(_onValidateNameEvent);
    on<_ValidateRoutingNumberEvent>(_onValidateRoutingNumberEvent);
    on<_ValidateTransitNumberEvent>(_onValidateTransitNumberEvent);
    on<_ValidateInstitutionNumberEvent>(_onValidateInstitutionNumberEvent);
    on<_ValidateAccountNumberEvent>(_onValidateAccountNumberEvent);
    on<_ValidateConfirmAccountNumberEvent>(
        _onValidateConfirmAccountNumberEvent);
    on<_ValidateAllFormEvent>(_onValidateAllFormEvent);
    on<_ValidateAllFormRBCEvent>(_onValidateAllFormRBCEvent);
    on<_ValidateWithdrawalAmountFormEvent>(
        _onValidateWithdrawalAmountFormEvent);
    on<_SetSetupIsCompletedEvent>(_onSetSetupIsCompletedEvent);
    on<_SetLatestPaymentAccountSettingsEvent>(
        _onSetLatestPaymentAccountSettingsEvent);
    on<_SetCurrentPaymentAccountSettings>(_onSetCurrentPaymentAccountSettings);
    on<_ResetPaymentAccountSettingsEvent>(_onResetPaymentAccountSettingsEvent);
    on<_SetIsAutopaySettings>(_onSetIsAutopaySettings);
    on<_SetAutopayIdEvent>(_onSetAutopayIdEvent);
    on<_StartLoanPathEvent>(_onStartLoanPathEvent);
  }

  final ErrorMessagesHelper _errorMessagesHelper;

  void _onSetUpCompleted(
      _AutoPayEventConfigure event, Emitter<AutoPayState> emit) async {
    emit(state.copyWith(setUpIsCompleted: false));
  }

  void _onSetNameEvent(
    _SetNameEvent event,
    Emitter<AutoPayState> emit,
  ) {
    emit(
      state.copyWith(
        name: NameInput.dirty(event.name),
      ),
    );
  }

  void _onSetAccountTypeEvent(
    _SetAccountTypeEvent event,
    Emitter<AutoPayState> emit,
  ) {
    emit(
      state.copyWith(
        accountType: event.accountType,
      ),
    );
  }

  void _onSetPaymentDateEvent(
    _SetPaymentDateEvent event,
    Emitter<AutoPayState> emit,
  ) {
    emit(
      state.copyWith(
        paymentDate: event.paymentDate,
      ),
    );
  }

  void _onValidateNameEvent(
    AutoPayEvent event,
    Emitter<AutoPayState> emit,
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
    Emitter<AutoPayState> emit,
  ) {
    emit(
      state.copyWith(
        routingNumber: RoutingNumberInput.dirty(event.routingNumber),
      ),
    );
  }

  void _onSetAutopayIdEvent(
    _SetAutopayIdEvent event,
    Emitter<AutoPayState> emit,
  ) {
    emit(
      state.copyWith(
        autopayId: event.autopayId,
        referenceId: event.referenceId,
        residentId: event.residentId,
        residentUserId: event.residentUserId,
      ),
    );
  }

  void _onValidateRoutingNumberEvent(
    AutoPayEvent event,
    Emitter<AutoPayState> emit,
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
    Emitter<AutoPayState> emit,
  ) {
    emit(
      state.copyWith(
        transitNumber: TransitNumberInput.dirty(event.transitNumber),
      ),
    );
  }

  void _onValidateTransitNumberEvent(
    AutoPayEvent event,
    Emitter<AutoPayState> emit,
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
    Emitter<AutoPayState> emit,
  ) {
    emit(
      state.copyWith(
        institutionNumber:
            InstitutionNumberInput.dirty(event.institutionNumber),
      ),
    );
  }

  void _onValidateInstitutionNumberEvent(
    AutoPayEvent event,
    Emitter<AutoPayState> emit,
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
    Emitter<AutoPayState> emit,
  ) {
    emit(
      state.copyWith(
        accountNumber: AccountNumberInput.dirty(event.accountNumber),
      ),
    );
  }

  void _onValidateAccountNumberEvent(
    AutoPayEvent event,
    Emitter<AutoPayState> emit,
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
    Emitter<AutoPayState> emit,
  ) {
    emit(
      state.copyWith(
        confirmAccountNumber: ConfirmAccountNumberInput.dirty(
            state.accountNumber, event.confirmAccountNumber),
      ),
    );
  }

  void _onValidateConfirmAccountNumberEvent(
    AutoPayEvent event,
    Emitter<AutoPayState> emit,
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
    Emitter<AutoPayState> emit,
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
    Emitter<AutoPayState> emit,
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

  void _onSetAllFieldsAreValidate(
    _SetAllFieldsAreValidate event,
    Emitter<AutoPayState> emit,
  ) {
    emit(state.copyWith(allFieldsAreValidate: false));
  }

  FutureOr<void> _onSetWithdrawalAmountOptionEvent(
    _SetWithdrawalAmountOptionEvent event,
    Emitter<AutoPayState> emit,
  ) {
    emit(
      state.copyWith(
        withdrawalAmountOption: event.withdrawalAmountOption,
        // withdrawalAmount: const DollarInput.pure(false),
        // withdrawalAmountErrorMessage: null,
      ),
    );
  }

  FutureOr<void> _onSetWithdrawalAmountEvent(
    _SetWithdrawalAmountEvent event,
    Emitter<AutoPayState> emit,
  ) {
    emit(
      state.copyWith(
        withdrawalAmount: DollarInput.dirty(true, event.amount),
      ),
    );
  }

  FutureOr<void> _onValidateWithdrawalAmountFormEvent(
    _ValidateWithdrawalAmountFormEvent event,
    Emitter<AutoPayState> emit,
  ) {
    final withdrawalAmountErrorMessage = _errorMessagesHelper.dollarInput[
        state.withdrawalAmount.validator(state.withdrawalAmount.value)];
    emit(
      state.copyWith(
        withdrawalAmountErrorMessage: withdrawalAmountErrorMessage,
      ),
    );
  }

  FutureOr<void> _onSetSetupIsCompletedEvent(
    _SetSetupIsCompletedEvent event,
    Emitter<AutoPayState> emit,
  ) {
    emit(
      state.copyWith(
        setUpIsCompleted: event.isCompleted,
      ),
    );
  }

  FutureOr<void> _onSetLatestPaymentAccountSettingsEvent(
    _SetLatestPaymentAccountSettingsEvent event,
    Emitter<AutoPayState> emit,
  ) {
    emit(
      state.copyWith(
        latestAutopayState: state,
      ),
    );
  }

  FutureOr<void> _onSetCurrentPaymentAccountSettings(
    _SetCurrentPaymentAccountSettings event,
    Emitter<AutoPayState> emit,
  ) {
    if (state.latestAutopayState != null) {
      emit(state.latestAutopayState!);
    }
  }

  FutureOr<void> _onSetPaymentTypeAutopaySettingsEvent(
    _SetPaymentTypeAutopaySettingsEvent event,
    Emitter<AutoPayState> emit,
  ) {
    emit(
      state.copyWith(
        paymentType: event.paymentType,
      ),
    );
  }

  FutureOr<void> _onResetPaymentAccountSettingsEvent(
    _ResetPaymentAccountSettingsEvent event,
    Emitter<AutoPayState> emit,
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
      isSetUpAutopay: false,
    ));
  }

  void _onSetupIsAutopay(
    _SetupIsAutopay event,
    Emitter<AutoPayState> emit,
  ) {
    emit(state.copyWith(isSetUpAutopay: event.isSetUpAutopay));
  }

  void _onSetIsAutopaySettings(
    _SetIsAutopaySettings event,
    Emitter<AutoPayState> emit,
  ) {
    emit(state.copyWith(isAutopaySettings: event.isAutopaySettings));
  }

  void _onStartLoanPathEvent(
    _StartLoanPathEvent event,
    Emitter<AutoPayState> emit,
  ) {
    emit(state.copyWith(isLoan: event.isLoan));
  }
}
