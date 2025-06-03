import 'package:formz/formz.dart';

enum CityValidationError {
  empty,
}

class CityInput extends FormzInput<String, CityValidationError> {
  const CityInput.pure() : super.pure('');
  const CityInput.dirty([super.dirty = '']) : super.dirty();

  @override
  CityValidationError? validator(String value) {
    if (value.isEmpty) {
      return CityValidationError.empty;
    }

    return null;
  }
}
