import 'package:formz/formz.dart';

enum CityValidationError {
  empty,
}

class City extends FormzInput<String, CityValidationError> {
  const City.pure() : super.pure('');
  const City.dirty([super.dirty = '']) : super.dirty();

  @override
  CityValidationError? validator(String value) {
    if (value.isEmpty) {
      return CityValidationError.empty;
    }

    return null;
  }
}
