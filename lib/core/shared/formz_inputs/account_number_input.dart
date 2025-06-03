import 'package:formz/formz.dart';

enum AccountNumberValidationError {
  empty,
}

class AccountNumberInput
    extends FormzInput<String, AccountNumberValidationError> {
  const AccountNumberInput.pure() : super.pure('');

  const AccountNumberInput.dirty([super.value = '']) : super.dirty();

  @override
  AccountNumberValidationError? validator(String value) {
    if (value.isEmpty) {
      return AccountNumberValidationError.empty;
    }

    return null;
  }
}
