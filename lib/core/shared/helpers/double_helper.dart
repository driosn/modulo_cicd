import 'package:intl/intl.dart';

extension NumberHelper on num {
  String toFormattedCurrency() {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(
      this,
    );
  }
}
