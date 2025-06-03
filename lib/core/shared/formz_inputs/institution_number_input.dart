import 'package:formz/formz.dart';

enum InstitutionNumberValidationError {
  empty,
  incorrectLength,
}

class InstitutionNumberInput
    extends FormzInput<String, InstitutionNumberValidationError> {
  const InstitutionNumberInput.pure() : super.pure('');

  const InstitutionNumberInput.dirty([super.value = '']) : super.dirty();

  @override
  InstitutionNumberValidationError? validator(String value) {
    const int requiredNumbers = 3;

    if (value.isEmpty) {
      return InstitutionNumberValidationError.empty;
    }

    if (value.length < requiredNumbers) {
      return InstitutionNumberValidationError.incorrectLength;
    }

    return null;
  }
}
