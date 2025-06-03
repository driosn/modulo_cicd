import 'package:resident_app/core/shared/extensions/string_extensions.dart';

class BillingSettingsUpdateParams {
  const BillingSettingsUpdateParams({
    required this.residentId,
    required this.deliveryType,
    required this.emailAddress,
    required this.phoneNumber,
    required this.leadDaysForBillReminder,
  });

  final String residentId;
  final int deliveryType;
  final String emailAddress;
  final String phoneNumber;
  final int leadDaysForBillReminder;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'residentId': residentId,
      'deliveryType': deliveryType,
      'leadDaysForBillReminder': leadDaysForBillReminder,
    };

    if (emailAddress.isNotEmpty) {
      data['emailAddress'] = emailAddress;
    }

    if (phoneNumber.isNotEmpty) {
      data['phoneNumber'] = phoneNumber.removePhoneFormat();
    }

    return data;
  }
}
