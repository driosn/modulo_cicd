import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/common/empty.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/language_selection/common/language_preference_update_params.dart';

abstract class LanguagePreferenceRepository {
  Future<Either<MAError, Empty>> update(
      LanguagePreferenceUpdateParams updateParams);
}
