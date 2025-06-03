import 'package:resident_app/features/user/user_feature.dart';

extension PrimarySiteExtensions on PrimarySite {
  String get fullName => '${resident.firstName} ${resident.lastName}';

  String get mailBillingAddress {
    String mailingAddress = '';

    if (resident.useBillingAddress) {
      mailingAddress += '\n${resident.billingAddress}';
      mailingAddress +=
          '\n${resident.billingCity}, ${resident.billingState}, ${resident.billingPostalCode}';
      return mailingAddress;
    }

    mailingAddress += '\n$address1\n$city, $state, $zipCode';

    return mailingAddress;
  }
}
