import 'package:resident_app/core/shared/extensions/string_extensions.dart';

class ContactInformationUpdateParams {
  const ContactInformationUpdateParams({
    required this.residentId,
    required this.emailAddress,
    required this.homePhone,
    required this.cellPhone,
    required this.billingAddress,
    required this.billingCity,
    required this.billingState,
    required this.billingPostalCode,
    required this.useBillingAddress,
  });

  final String residentId;
  final String emailAddress;
  final String homePhone;
  final String cellPhone;
  final String billingAddress;
  final String billingCity;
  final String billingState;
  final String billingPostalCode;
  final bool useBillingAddress;

  Map<String, dynamic> toJson() => {
        'residentId': residentId,
        'emailAddress': emailAddress,
        'homePhone': homePhone.removePhoneFormat(),
        'cellPhone': cellPhone.removePhoneFormat(),
        'useBillingAddress': useBillingAddress,
        'billingAddress': billingAddress,
        'billingCity': billingCity,
        'billingState': billingState,
        'billingPostalCode': billingPostalCode,
      };
}
