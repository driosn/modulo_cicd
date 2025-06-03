import 'package:resident_app/features/autopay/domain/entities/autopay_option.dart';

class AutoPaySettings {
  final String id;
  final AutoPayOption autoPayOption;
  final bool isActive;
  final String residentId;
  final String referenceId;
  final String paymentMethodTypeDescription;
  final int payAmount;
  final int paymentMethodType;
  final int payDay;

  static final empty = AutoPaySettings(
    id: "",
    autoPayOption: AutoPayOption.empty,
    isActive: false,
    residentId: "",
    referenceId: "",
    payAmount: 0,
    paymentMethodTypeDescription: "",
    paymentMethodType: 0,
    payDay: 1
  );

  AutoPaySettings(
      {required this.id,
      required this.autoPayOption,
      required this.isActive,
      required this.residentId,
      required this.referenceId,
      required this.payAmount,
      required this.paymentMethodTypeDescription,
      required this.paymentMethodType,
      required this.payDay});
}
