import 'package:resident_app/core/data/models/account_type.dart';

class NewPaymentAccount {
  const NewPaymentAccount({
    required this.type,
    required this.name,
    required this.routingNumber,
    required this.institutionNumber,
    required this.transitNumber,
    required this.number,
  });

  final AccountType type;
  final String name;
  final String routingNumber;
  final String institutionNumber;
  final String transitNumber;
  final String number;
}
