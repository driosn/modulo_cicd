import 'package:formz/formz.dart';

enum AccountNumberValidationError {
  empty,
  incorrectLength,
}

class AccountNumber extends FormzInput<String, AccountNumberValidationError> {
  const AccountNumber.pure() : super.pure('');
  const AccountNumber.dirty([super.value = '']) : super.dirty();

  @override
  AccountNumberValidationError? validator(String value) {
    const int accountNumbers = 20;

    if (value.isEmpty) {
      return AccountNumberValidationError.empty;
    }

    if (value.length < accountNumbers) {
      return AccountNumberValidationError.incorrectLength;
    }

    return null;
  }
}
