import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_type.freezed.dart';

@freezed
class AccountType with _$AccountType {
  const factory AccountType({
    required String name,
    required String value,
  }) = _AccountType;

  factory AccountType.fromJson(Map<String, String> json) {
    return AccountType(
      name: json['name'] ?? '',
      value: json['value'] ?? '',
    );
  }
}

extension AccountTypeExtension on AccountType {
  static const Map<String, int> _accountTypeMap = {
    "Checking": 2,
    "Savings": 3,
  };

  int get accountType {
    return _accountTypeMap[name] ?? (throw Exception("Account type not found"));
  }
}
