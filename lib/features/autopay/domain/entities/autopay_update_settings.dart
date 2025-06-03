import 'package:resident_app/features/autopay/data/models/autopay_option_types.dart';

class AutoPayUpdateSettings {
  final String? autoPaySettingsId;
  final AutoPayOptionTypes autoPayOptionType;
  final bool isActive;
  final String residentId;
  final String residentUserId;
  final String referenceId;
  final int paymentMethodType;
  final int paymentDay;
  final int? paymentAmount;

  static final empty = AutoPayUpdateSettings(
      autoPaySettingsId: "",
      autoPayOptionType: AutoPayOptionTypes.empty,
      isActive: true,
      residentId: "",
      residentUserId: "",
      referenceId: "",
      paymentMethodType: 0,
      paymentAmount: 0,
      paymentDay: 1);

  AutoPayUpdateSettings({
    required this.autoPaySettingsId,
    required this.autoPayOptionType,
    required this.isActive,
    required this.residentId,
    required this.residentUserId,
    required this.referenceId,
    required this.paymentMethodType,
    required this.paymentDay,
    required this.paymentAmount
  });
}
