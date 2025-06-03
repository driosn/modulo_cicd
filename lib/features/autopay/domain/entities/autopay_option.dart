import 'package:resident_app/features/autopay/data/models/autopay_option_types.dart';

class AutoPayOption {
  final String id;
  final String autoPayOptionTypeDescription;
  final AutoPayOptionTypes autoPayOptionType;

  const AutoPayOption({
    required this.id,
    required this.autoPayOptionTypeDescription,
    required this.autoPayOptionType,
  });

  static const empty = AutoPayOption(
    id: "",
    autoPayOptionTypeDescription: "",
    autoPayOptionType: AutoPayOptionTypes.empty,
  );
}
