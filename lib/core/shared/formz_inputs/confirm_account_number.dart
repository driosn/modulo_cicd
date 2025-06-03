import 'package:formz/formz.dart';
import 'package:resident_app/core/shared/formz_inputs/account_number.dart';

enum ConfirmAccountNumberValidationError {
  empty,
  incorrectLength,
  accountNumberEmpty,
  notMatchAccount
}

class ConfirmAccountNumber
    extends FormzInput<String, ConfirmAccountNumberValidationError> {
  final AccountNumber accountNumber;

  const ConfirmAccountNumber.pure(this.accountNumber) : super.pure('');

  const ConfirmAccountNumber.dirty(this.accountNumber, [super.value = '']) : super.dirty();

  @override
  ConfirmAccountNumberValidationError? validator(String value) {
    const int confirmAccountNumbers = 20;

    if (value.isEmpty) {
      return ConfirmAccountNumberValidationError.empty;
    }

    if (value.length < confirmAccountNumbers) {
      return ConfirmAccountNumberValidationError.incorrectLength;
    }

    if (accountNumber.value.isEmpty) {
      return ConfirmAccountNumberValidationError.accountNumberEmpty;
    }

    if (value != accountNumber.value) {
      return ConfirmAccountNumberValidationError.notMatchAccount;
    }
    return null;
  }
}
