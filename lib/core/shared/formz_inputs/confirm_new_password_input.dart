import 'package:formz/formz.dart';
import 'package:resident_app/core/shared/formz_inputs/password_input.dart';

enum ConfirmNewPasswordValidationError {
  empty,
  notMatchPassword,
}

class ConfirmNewPasswordInput
    extends FormzInput<String, ConfirmNewPasswordValidationError> {
  final PasswordInput password;

  const ConfirmNewPasswordInput.pure(this.password) : super.pure('');

  const ConfirmNewPasswordInput.dirty(this.password, [super.value = ''])
      : super.dirty();

  @override
  ConfirmNewPasswordValidationError? validator(String value) {
    if (value.isEmpty) {
      return ConfirmNewPasswordValidationError.empty;
    }

    if (value != password.value) {
      return ConfirmNewPasswordValidationError.notMatchPassword;
    }
    return null;
  }
}
