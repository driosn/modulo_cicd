import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/shared/formz_inputs/login_password_input.dart';
import 'package:resident_app/core/shared/formz_inputs/username_input.dart';
import 'package:resident_app/core/shared/helpers/error_messages_helper.dart';

part 'sign_in_validations_bloc.freezed.dart';
part 'sign_in_validations_event.dart';
part 'sign_in_validations_state.dart';

class SignInValidationsBloc
    extends Bloc<SignInValidationsEvent, SignInValidationsState> {
  SignInValidationsBloc({
    required ErrorMessagesHelper errorMessagesHelper,
  })  : _errorMessagesHelper = errorMessagesHelper,
        super(const SignInValidationsState()) {
    on<_SetUsernameEvent>(_onSetUsername);
    on<_SetPasswordEvent>(_onSetPassword);
    on<_ValidateUsernameEvent>(_onValidateUsername);
    on<_ValidatePasswordEvent>(_onValidatePassword);
    on<_ValidateAllEvent>(_onValidateAll);
  }

  final ErrorMessagesHelper _errorMessagesHelper;

  void _onSetUsername(
    _SetUsernameEvent event,
    Emitter<SignInValidationsState> emit,
  ) {
    emit(
      state.copyWith(
        username: UsernameInput.dirty(event.username),
      ),
    );
  }

  void _onSetPassword(
    _SetPasswordEvent event,
    Emitter<SignInValidationsState> emit,
  ) {
    emit(
      state.copyWith(
        password: LoginPasswordInput.dirty(event.password),
      ),
    );
  }

  void _onValidateUsername(
    SignInValidationsEvent event,
    Emitter<SignInValidationsState> emit,
  ) {
    final usernameErrorMessage =
        _errorMessagesHelper.username[state.username.validator(
      state.username.value,
    )];
    emit(
      state.copyWith(
        usernameErrorMesasge: usernameErrorMessage,
      ),
    );
  }

  void _onValidatePassword(
    SignInValidationsEvent event,
    Emitter<SignInValidationsState> emit,
  ) {
    final passwordErrorMessage = _errorMessagesHelper
        .loginPassword[state.password.validator(state.password.value)];
    emit(
      state.copyWith(
        passwordErrorMessage: passwordErrorMessage,
      ),
    );
  }

  void _onValidateAll(
    _ValidateAllEvent event,
    Emitter<SignInValidationsState> emit,
  ) {
    emit(
      state.copyWith(
        allFieldsAreValid: false,
      ),
    );

    _onValidateUsername(event, emit);
    _onValidatePassword(event, emit);

    final allFieldsAreValid = state.usernameErrorMesasge == null &&
        state.passwordErrorMessage == null;

    emit(
      state.copyWith(
        allFieldsAreValid: allFieldsAreValid,
      ),
    );
  }
}
