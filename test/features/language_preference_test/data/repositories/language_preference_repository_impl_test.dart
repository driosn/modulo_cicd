import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/core/shared/common/empty.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/language_selection/common/language_preference_update_params.dart';
import 'package:resident_app/features/language_selection/data/datasources/language_preference_remote_datasource.dart';
import 'package:resident_app/features/language_selection/data/repositories/language_preference_repository_impl.dart';
import 'package:resident_app/features/language_selection/domain/repositories/language_preference_repository.dart';

class MockLanguagePreferenceRemoteDataSource extends Mock
    implements LanguagePreferenceRemoteDataSource {}

void main() {
  group(
    'Update languagePreference from remote datasource',
    () {
      late LanguagePreferenceRemoteDataSource
          mockLanguagePreferenceRemoteDataSource;
      late LanguagePreferenceRepository languagePreferenceRepository;

      const tResidentUserId = 'tResidentUserId';

      const tUpdateParams = LanguagePreferenceUpdateParams(
        residentUserId: tResidentUserId,
        notificationLanguageType: 3,
      );

      setUp(
        () {
          mockLanguagePreferenceRemoteDataSource =
              MockLanguagePreferenceRemoteDataSource();
          languagePreferenceRepository = LanguagePreferenceRepositoryImpl(
            languagePreferenceRemoteDataSource:
                mockLanguagePreferenceRemoteDataSource,
          );
        },
      );

      test(
        'When update() go success, should return 200',
        () async {
          when(() => mockLanguagePreferenceRemoteDataSource.update(
                tUpdateParams,
              )).thenAnswer(
            (_) async => Empty(),
          );

          final result = await languagePreferenceRepository.update(
            tUpdateParams,
          );

          final foldedResult = result.fold(
            (l) => l,
            (r) => r,
          );

          expect(foldedResult, isA<Empty>());
        },
      );

      test(
        'When update LanguagePreference has failure, should return Failure',
        () async {
          when(() => mockLanguagePreferenceRemoteDataSource.update(
                tUpdateParams,
              )).thenThrow(
            Exception(),
          );

          final result = await languagePreferenceRepository.update(
            tUpdateParams,
          );

          final foldedResult = result.fold(
            (l) => l,
            (r) => r,
          );

          expect(foldedResult, isA<MAError>());
        },
      );
    },
  );
}
