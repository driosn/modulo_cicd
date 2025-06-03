import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/shared/formz_inputs/formz_inputs.dart';
import 'package:resident_app/core/shared/helpers/error_messages_helper.dart';

part 'demo_bloc.freezed.dart';
part 'demo_event.dart';
part 'demo_state.dart';

class DemoBloc extends Bloc<DemoEvent, DemoState> {
  DemoBloc({
    required ErrorMessagesHelper errorMessagesHelper,
  })  : _errorMessagesHelper = errorMessagesHelper,
        super(const DemoState()) {
    on<_SetEmailEvent>(_onSetEmailEvent);
    on<_SetPasswordEvent>(_onSetPasswordEvent);
    on<_SetPhoneEvent>(_onSetPhoneEvent);
    on<_ValidateEmailEvent>(_onValidateEmailEvent);
    on<_ValidatePasswordEvent>(_onValidatePasswordEvent);
    on<_ValidatePhoneEvent>(_onValidatePhoneEvent);
  }

  final ErrorMessagesHelper _errorMessagesHelper;

  void _onSetEmailEvent(
    _SetEmailEvent event,
    Emitter<DemoState> emit,
  ) {
    emit(
      state.copyWith(
        email: EmailInput.dirty(event.email),
      ),
    );
  }

  void _onSetPasswordEvent(
    _SetPasswordEvent event,
    Emitter<DemoState> emit,
  ) {
    emit(
      state.copyWith(
        password: PasswordInput.dirty(event.password),
      ),
    );
  }

  void _onSetPhoneEvent(
    _SetPhoneEvent event,
    Emitter<DemoState> emit,
  ) {
    emit(
      state.copyWith(
        phone: PhoneInput.dirty(event.phone),
      ),
    );
  }

  void _onValidateEmailEvent(
    _ValidateEmailEvent event,
    Emitter<DemoState> emit,
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
    _ValidatePasswordEvent event,
    Emitter<DemoState> emit,
  ) {
    final passwordErrorMessage = _errorMessagesHelper
        .password[state.password.validator(state.password.value)];
    emit(
      state.copyWith(
        passwordErrorMessage: passwordErrorMessage,
      ),
    );
  }

  void _onValidatePhoneEvent(
    _ValidatePhoneEvent event,
    Emitter<DemoState> emit,
  ) {
    final phoneErrorMessage =
        _errorMessagesHelper.phone[state.phone.validator(state.phone.value)];
    emit(
      state.copyWith(
        phoneErrorMessage: phoneErrorMessage,
      ),
    );
  }
}
