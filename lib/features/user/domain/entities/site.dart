class Site {
  const Site({
    required this.address1,
    required this.address2,
    required this.siteName,
    required this.city,
    required this.state,
    required this.zipCode,
    required this.propertyName,
    required this.propertyId,
    required this.isBilling,
    required this.isEverywareCashPayConfigured,
  });

  final String address1;
  final String address2;
  final String siteName;
  final String city;
  final String state;
  final String zipCode;
  final String propertyName;
  final String propertyId;
  final bool isBilling;
  final bool isEverywareCashPayConfigured;
}
