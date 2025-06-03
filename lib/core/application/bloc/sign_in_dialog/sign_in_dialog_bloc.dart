import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/shared/formz_inputs/formz_inputs.dart';
import 'package:resident_app/core/shared/helpers/error_messages_helper.dart';

part 'sign_in_dialog_bloc.freezed.dart';
part 'sign_in_dialog_event.dart';
part 'sign_in_dialog_state.dart';

class SignInDialogBloc extends Bloc<SignInDialogEvent, SignInDialogState> {
  SignInDialogBloc({
    required ErrorMessagesHelper errorMessagesHelper,
  })  : _errorMessagesHelper = errorMessagesHelper,
        super(const SignInDialogState()) {
    on<_SetEmailEvent>(_onSetEmailEvent);
    on<_SetPasswordEvent>(_onSetPasswordEvent);
    on<_ValidateEmailEvent>(_onValidateEmailEvent);
    on<_ValidatePasswordEvent>(_onValidatePasswordEvent);
    on<_ValidateFormEvent>(_onValidateFormEvent);
  }

  final ErrorMessagesHelper _errorMessagesHelper;

  void _onSetEmailEvent(
    _SetEmailEvent event,
    Emitter<SignInDialogState> emit,
  ) {
    emit(
      state.copyWith(
        email: EmailInput.dirty(event.email),
      ),
    );
  }

  void _onSetPasswordEvent(
    _SetPasswordEvent event,
    Emitter<SignInDialogState> emit,
  ) {
    emit(
      state.copyWith(
        password: PasswordInput.dirty(event.password),
      ),
    );
  }

  void _onValidateEmailEvent(
    SignInDialogEvent event,
    Emitter<SignInDialogState> emit,
  ) {
    final emailErrorMessage =
        _errorMessagesHelper.email[state.email.validator(state.email.value)];

    emit(
      state.copyWith(
        emailErrorMessage: emailErrorMessage,
      ),
    );
  }

  void _onValidatePasswordEvent(
    SignInDialogEvent event,
    Emitter<SignInDialogState> emit,
  ) {
    final passwordErrorMessage = _errorMessagesHelper
        .password[state.password.validator(state.password.value)];

    emit(
      state.copyWith(
        passwordErrorMessage: passwordErrorMessage,
      ),
    );
  }

  void _onValidateFormEvent(
    _ValidateFormEvent event,
    Emitter<SignInDialogState> emit,
  ) {
    bool isAllFormValid = false;
    _onValidateEmailEvent(event, emit);
    _onValidatePasswordEvent(event, emit);

    if (state.emailErrorMessage != null && state.passwordErrorMessage != null) {
      isAllFormValid = true;
    }
    emit(
      state.copyWith(
        isAllFormValid: isAllFormValid,
      ),
    );
  }
}
