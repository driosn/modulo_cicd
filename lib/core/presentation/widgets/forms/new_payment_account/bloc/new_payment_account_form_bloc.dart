import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/data/models/account_type.dart';
import 'package:resident_app/core/shared/formz_inputs/account_number_input.dart';
import 'package:resident_app/core/shared/formz_inputs/confirm_account_number_input.dart';
import 'package:resident_app/core/shared/formz_inputs/institution_number_input.dart';
import 'package:resident_app/core/shared/formz_inputs/name_input.dart';
import 'package:resident_app/core/shared/formz_inputs/routing_number_input.dart';
import 'package:resident_app/core/shared/formz_inputs/transit_number_input.dart';
import 'package:resident_app/core/shared/helpers/error_messages_helper.dart';
import 'package:resident_app/features/autopay/presentation/models/payment_date.dart';

part 'new_payment_account_form_bloc.freezed.dart';
part 'new_payment_account_form_event.dart';
part 'new_payment_account_form_state.dart';

class NewPaymentAccountFormBloc
    extends Bloc<NewPaymentAccountFormEvent, NewPaymentAccountFormState> {
  NewPaymentAccountFormBloc({
    required ErrorMessagesHelper errorMessagesHelper,
  })  : _errorMessagesHelper = errorMessagesHelper,
        super(const NewPaymentAccountFormState()) {
    on<_SetNameEvent>(_onSetNameEvent);
    on<_SetAccountTypeEvent>(_onSetAccountTypeEvent);
    on<_SetRoutingNumberEvent>(_onSetRoutingNumberEvent);
    on<_SetTransitNumberEvent>(_onSetTransitNumberEvent);
    on<_SetInstitutionNumberEvent>(_onSetInstitutionNumberEvent);
    on<_SetAccountNumberEvent>(_onSetAccountNumberEvent);
    on<_SetConfirmAccountNumberEvent>(_onSetConfirmAccountNumberEvent);
    on<_ValidateNameEvent>(_onValidateNameEvent);
    on<_ValidateRoutingNumberEvent>(_onValidateRoutingNumberEvent);
    on<_ValidateTransitNumberEvent>(_onValidateTransitNumberEvent);
    on<_ValidateInstitutionNumberEvent>(_onValidateInstitutionNumberEvent);
    on<_ValidateAccountNumberEvent>(_onValidateAccountNumberEvent);
    on<_ValidateConfirmAccountNumberEvent>(
        _onValidateConfirmAccountNumberEvent);
    on<_ValidateAllFormEvent>(_onValidateAllFormEvent);
    on<_ValidateAllFormRBCEvent>(_onValidateAllFormRBCEvent);
    on<_ResetPaymentAccountSettingsEvent>(_onResetPaymentAccountSettingsEvent);
    on<_SetRoutingNumberErrorEvent>(_onSetRoutingNumberErrorEvent);
  }

  final ErrorMessagesHelper _errorMessagesHelper;

  void _onSetNameEvent(
    _SetNameEvent event,
    Emitter<NewPaymentAccountFormState> emit,
  ) {
    emit(
      state.copyWith(
        name: NameInput.dirty(event.name),
      ),
    );
  }

  void _onSetAccountTypeEvent(
    _SetAccountTypeEvent event,
    Emitter<NewPaymentAccountFormState> emit,
  ) {
    emit(
      state.copyWith(
        accountType: event.accountType,
      ),
    );
  }

  void _onValidateNameEvent(
    NewPaymentAccountFormEvent event,
    Emitter<NewPaymentAccountFormState> emit,
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
    Emitter<NewPaymentAccountFormState> emit,
  ) {
    emit(
      state.copyWith(
        routingNumber: RoutingNumberInput.dirty(event.routingNumber),
      ),
    );
  }

  void _onValidateRoutingNumberEvent(
    NewPaymentAccountFormEvent event,
    Emitter<NewPaymentAccountFormState> emit,
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
    Emitter<NewPaymentAccountFormState> emit,
  ) {
    emit(
      state.copyWith(
        transitNumber: TransitNumberInput.dirty(event.transitNumber),
      ),
    );
  }

  void _onValidateTransitNumberEvent(
    NewPaymentAccountFormEvent event,
    Emitter<NewPaymentAccountFormState> emit,
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
    Emitter<NewPaymentAccountFormState> emit,
  ) {
    emit(
      state.copyWith(
        institutionNumber:
            InstitutionNumberInput.dirty(event.institutionNumber),
      ),
    );
  }

  void _onValidateInstitutionNumberEvent(
    NewPaymentAccountFormEvent event,
    Emitter<NewPaymentAccountFormState> emit,
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
    Emitter<NewPaymentAccountFormState> emit,
  ) {
    emit(
      state.copyWith(
        accountNumber: AccountNumberInput.dirty(event.accountNumber),
      ),
    );
  }

  void _onValidateAccountNumberEvent(
    NewPaymentAccountFormEvent event,
    Emitter<NewPaymentAccountFormState> emit,
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
    Emitter<NewPaymentAccountFormState> emit,
  ) {
    emit(
      state.copyWith(
        confirmAccountNumber: ConfirmAccountNumberInput.dirty(
            state.accountNumber, event.confirmAccountNumber),
      ),
    );
  }

  void _onValidateConfirmAccountNumberEvent(
    NewPaymentAccountFormEvent event,
    Emitter<NewPaymentAccountFormState> emit,
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
    Emitter<NewPaymentAccountFormState> emit,
  ) {
    emit(
      state.copyWith(
        allFieldsAreValid: false,
      ),
    );
    _onValidateNameEvent(event, emit);
    _onValidateRoutingNumberEvent(event, emit);
    _onValidateAccountNumberEvent(event, emit);
    _onValidateConfirmAccountNumberEvent(event, emit);
    if (state.nameErrorMessage == null &&
        state.routingNumberErrorMessage == null &&
        state.accountNumberErrorMessage == null &&
        state.confirmAccountNumberErrorMessage == null) {
      emit(state.copyWith(
        allFieldsAreValid: true,
      ));
    } else {
      emit(state.copyWith(
        allFieldsAreValid: false,
      ));
    }
  }

  void _onValidateAllFormRBCEvent(
    _ValidateAllFormRBCEvent event,
    Emitter<NewPaymentAccountFormState> emit,
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
      emit(state.copyWith(allFieldsAreValid: true));
    } else {
      emit(state.copyWith(allFieldsAreValid: false));
    }
  }

  FutureOr<void> _onResetPaymentAccountSettingsEvent(
    _ResetPaymentAccountSettingsEvent event,
    Emitter<NewPaymentAccountFormState> emit,
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
      setUpIsCompleted: false,
    ));
  }

  void _onSetRoutingNumberErrorEvent(
    _SetRoutingNumberErrorEvent event,
    Emitter<NewPaymentAccountFormState> emit,
  ) {
    emit(
      state.copyWith(
        routingNumberErrorMessage: event.message,
        allFieldsAreValid: false,
      ),
    );
  }
}
