import 'package:formz/formz.dart';
import 'package:resident_app/core/shared/formz_inputs/account_number_input.dart';

enum ConfirmAccountNumberValidationError {
  empty,
  accountNumberEmpty,
  notMatchAccount
}

class ConfirmAccountNumberInput
    extends FormzInput<String, ConfirmAccountNumberValidationError> {
  final AccountNumberInput accountNumber;

  const ConfirmAccountNumberInput.pure(this.accountNumber) : super.pure('');

  const ConfirmAccountNumberInput.dirty(this.accountNumber, [super.value = ''])
      : super.dirty();

  @override
  ConfirmAccountNumberValidationError? validator(String value) {
    if (value.isEmpty) {
      return ConfirmAccountNumberValidationError.empty;
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
