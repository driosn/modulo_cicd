import 'package:formz/formz.dart';

enum PhoneValidationError {
  incomplete,
}

class PhoneInput extends FormzInput<String, PhoneValidationError> {
  const PhoneInput.pure() : super.pure('');
  const PhoneInput.dirty(super.cellPhone) : super.dirty();

  @override
  PhoneValidationError? validator(String value) {
    const int requiredNumbersWithFormat = 14;

    if (value.isEmpty || value.length < requiredNumbersWithFormat) {
      return PhoneValidationError.incomplete;
    }
    return null;
  }
}
