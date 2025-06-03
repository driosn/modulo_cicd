import 'package:formz/formz.dart';

enum PasswordValidationError {
  empty,
  tooShort,
  tooLong,
  missingNumber,
  missingSymbol
}

class PasswordInput extends FormzInput<String, PasswordValidationError> {
  const PasswordInput.pure() : super.pure('');
  const PasswordInput.dirty([super.value = '']) : super.dirty();

  @override
  PasswordValidationError? validator(String value) {
    if (value.isEmpty) {
      return PasswordValidationError.empty;
    }

    const int passwordMinCharacters = 8;
    const int passwordMaxCharacters = 64;

    if (value.length < passwordMinCharacters) {
      return PasswordValidationError.tooShort;
    }

    if (value.length > passwordMaxCharacters) {
      return PasswordValidationError.tooLong;
    }

    const atLeastOneNumberPattern = r'^.*[0-9].*$';
    const atLeastOneSymbolPattern = r'^.*[!@#\$&*~%^*()+=].*';
    final numericRegex = RegExp(atLeastOneNumberPattern);
    final numericSymbol = RegExp(atLeastOneSymbolPattern);

    return !numericRegex.hasMatch(value)
        ? PasswordValidationError.missingNumber
        : !numericSymbol.hasMatch(value)
            ? PasswordValidationError.missingSymbol
            : null;
  }
}
