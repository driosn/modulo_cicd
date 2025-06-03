import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/autopay/data/models/autopay_update_settings_model.dart';
import 'package:resident_app/features/autopay/domain/entities/autopay_settings.dart';

abstract class AutoPaySettingsRepository {
  Future<Either<MAError, List<AutoPaySettings>>> getAutoPaySettings(
    String residentId,
  );

  Future<Either<MAError, void>> updateAutoPaySettings(
    AutoPayUpdateSettingsModel autopaySettings,
  );
}
