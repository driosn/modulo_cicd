import 'package:resident_app/features/language_selection/common/language_preference_update_params.dart';

abstract class LanguagePreferenceRemoteDataSource {
  Future<void> update(
    LanguagePreferenceUpdateParams updateParams,
  );
}
