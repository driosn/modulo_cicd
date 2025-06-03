class UserClaim {
  const UserClaim({
    required this.type,
    required this.value,
    required this.valueType,
    required this.issuer,
    required this.originalIssuer,
  });

  final String type;
  final String value;
  final String valueType;
  final String issuer;
  final String originalIssuer;
}
