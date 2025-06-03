import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/shared/formz_inputs/formz_inputs.dart';
import 'package:resident_app/core/shared/helpers/error_messages_helper.dart';

part 'start_registration_bloc.freezed.dart';
part 'start_registration_event.dart';
part 'start_registration_state.dart';

class StartRegistrationBloc
    extends Bloc<StartRegistrationEvent, StartRegistrationState> {
  StartRegistrationBloc({
    required ErrorMessagesHelper errorMessagesHelper,
  })  : _errorMessagesHelper = errorMessagesHelper,
        super(const StartRegistrationState()) {
    on<_SetEmailEvent>(_onSetEmailEvent);
    on<_ValidateEmailEvent>(_onValidateEmailEvent);
    on<_ValidateFormEvent>(_onValidateFormEvent);
  }

  final ErrorMessagesHelper _errorMessagesHelper;

  void _onSetEmailEvent(
    _SetEmailEvent event,
    Emitter<StartRegistrationState> emit,
  ) {
    emit(
      state.copyWith(
        email: EmailInput.dirty(event.email),
      ),
    );
  }

  void _onValidateEmailEvent(
    StartRegistrationEvent event,
    Emitter<StartRegistrationState> emit,
  ) {
    final emailErrorMessage =
        _errorMessagesHelper.email[state.email.validator(state.email.value)];
    emit(
      state.copyWith(
        emailErrorMessage: emailErrorMessage,
      ),
    );
  }

  _onValidateFormEvent(
    _ValidateFormEvent event,
    Emitter<StartRegistrationState> emit,
  ) {
    emit(
      state.copyWith(
        isFormValid: false,
      ),
    );

    _onValidateEmailEvent(event, emit);

    emit(
      state.copyWith(
        isFormValid: state.emailErrorMessage == null ? true : false,
      ),
    );
  }
}
