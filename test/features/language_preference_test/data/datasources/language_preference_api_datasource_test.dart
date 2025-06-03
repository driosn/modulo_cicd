import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/features/language_selection/common/language_preference_update_params.dart';
import 'package:resident_app/features/language_selection/data/datasources/language_preference_api_datasource.dart';
import 'package:resident_app/features/language_selection/data/datasources/language_preference_remote_datasource.dart';

import '../../../mocks.dart';

void main() {
  group(
    'updateLanguagePreference() - Update languagePreference from RPM API',
    () {
      late Dio mockDio;
      late LanguagePreferenceRemoteDataSource remoteDataSource;

      const tResidentUserId = 'tResidentUserId';

      const tUpdateParams = LanguagePreferenceUpdateParams(
        residentUserId: tResidentUserId,
        notificationLanguageType: 3,
      );

      setUp(
        () {
          mockDio = MockDio();
          remoteDataSource = LanguagePreferenceApiDataSource(
            dio: mockDio,
          );
        },
      );

      test(
        'Should return success when language preference API call is successful',
        () async {
          when(() => mockDio.post(
                any(),
                data: any(named: 'data'),
              )).thenAnswer(
            (_) async => Response(
              statusCode: 200,
              requestOptions: RequestOptions(path: ''),
            ),
          );

          await remoteDataSource.update(tUpdateParams);

          verify(() => mockDio.post(
                '/ResidentUser/UpdateNotificationLanguagePreference',
                data: tUpdateParams.toJson(),
              )).called(1);
        },
      );

      test(
        'Should throw an exception when language preference API call fails',
        () async {
          when(() => mockDio.post(
                any(),
                data: any(named: 'data'),
              )).thenThrow(Exception());

          expect(
            () async => await remoteDataSource.update(tUpdateParams),
            throwsA(isA<Exception>()),
          );

          verify(() => mockDio.post(
                '/ResidentUser/UpdateNotificationLanguagePreference',
                data: tUpdateParams.toJson(),
              )).called(1);
        },
      );
    },
  );
}
