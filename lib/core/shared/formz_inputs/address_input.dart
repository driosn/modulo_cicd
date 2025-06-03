import 'package:formz/formz.dart';

enum AddressValidationError {
  empty,
}

class AddressInput extends FormzInput<String, AddressValidationError> {
  const AddressInput.pure() : super.pure('');
  const AddressInput.dirty([super.dirty = '']) : super.dirty();

  @override
  AddressValidationError? validator(String value) {
    if (value.isEmpty) {
      return AddressValidationError.empty;
    }

    return null;
  }
}
