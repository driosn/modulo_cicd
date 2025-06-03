import 'package:formz/formz.dart';

enum DollarInputValidationError {
  empty,
  notGreaterThanZero,
  notGreaterThanOne,
}

class DollarInput extends FormzInput<String, DollarInputValidationError> {
  const DollarInput.pure(
    this.shouldBeGreaterThanZero,
  ) : super.pure('');

  const DollarInput.dirty(this.shouldBeGreaterThanZero, [super.value = ''])
      : super.dirty();

  final bool shouldBeGreaterThanZero;

  @override
  DollarInputValidationError? validator(String value) {
    if (value.isEmpty) {
      return DollarInputValidationError.empty;
    }

    if (shouldBeGreaterThanZero) {
      // TODO: Refactor this implementation when using real data
      if (value == '\$0' ||
          value == '0' ||
          value.isEmpty ||
          value == '0.00' ||
          value == "\$0.00") {
        return DollarInputValidationError.notGreaterThanZero;
      }
    }

    return null;
  }

  double get amount {
    if (value.isEmpty) {
      return 0.0;
    }

    final valueWithoutComma = value.replaceAll(',', '');

    if (double.tryParse(valueWithoutComma) != null) {
      return double.parse(valueWithoutComma);
    }

    final replacedValue = valueWithoutComma.replaceAll('\$', '');
    if (double.tryParse(replacedValue) != null) {
      return double.parse(replacedValue);
    }

    throw Exception('Exception while getting amount');
  }
}
