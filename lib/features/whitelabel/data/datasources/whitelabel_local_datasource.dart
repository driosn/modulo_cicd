import 'package:resident_app/features/whitelabel/data/models/whitelabel_model.dart';

abstract class WhitelabelLocalDataSource {
  Future<WhitelabelModel?> getWhiteLabelSettings();
  Future<void> setWhiteLabelSettings(WhitelabelModel whitelabelSettings);
  Future<void> resetWhiteLabel();
}
