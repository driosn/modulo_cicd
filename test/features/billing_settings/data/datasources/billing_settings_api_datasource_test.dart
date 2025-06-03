import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/features/billing_settings/common/billing_settings_update_params.dart';
import 'package:resident_app/features/billing_settings/data/datasources/billing_settings_api_datasource.dart';
import 'package:resident_app/features/billing_settings/data/datasources/billing_settings_remote_datasource.dart';

import '../../../mocks.dart';

void main() {
  group(
    'getBillingSettings() - Get billingSettings from RPM API',
    () {
      late Dio mockDio;
      late BillingSettingsRemoteDataSource remoteDataSource;

      const tResidentUserId = 'tResidentUserId';

      const tUpdateParams = BillingSettingsUpdateParams(
        residentId: tResidentUserId,
        deliveryType: 1,
        emailAddress: '',
        phoneNumber: '',
        leadDaysForBillReminder: 0,
      );

      setUp(
        () {
          mockDio = MockDio();
          remoteDataSource = BillingSettingsApiDataSource(
            dio: mockDio,
          );
        },
      );

      test(
        'Should return success when API call is successful',
        () async {
          when(() => mockDio.patch(
                any(),
                data: any(named: 'data'),
              )).thenAnswer(
            (_) async => Response(
              statusCode: 200,
              requestOptions: RequestOptions(path: ''),
            ),
          );

          await remoteDataSource.update(tUpdateParams);

          verify(
            () => mockDio.patch(
              '/BillingSettings/UpdateBillingSettings',
              data: tUpdateParams.toJson(),
            ),
          ).called(1);
        },
      );

      test(
        'Should throw an exception when API call fails',
        () async {
          when(() => mockDio.patch(
                any(),
                data: any(named: 'data'),
              )).thenThrow(Exception());

          expect(
            () async => await remoteDataSource.update(tUpdateParams),
            throwsA(isA<Exception>()),
          );

          verify(() => mockDio.patch(
                '/BillingSettings/UpdateBillingSettings',
                data: tUpdateParams.toJson(),
              )).called(1);
        },
      );
    },
  );
}
