import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/core/shared/common/empty.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/billing_settings/common/billing_settings_update_params.dart';
import 'package:resident_app/features/billing_settings/data/datasources/billing_settings_remote_datasource.dart';
import 'package:resident_app/features/billing_settings/data/repositories/billing_settings_repository_impl.dart';
import 'package:resident_app/features/billing_settings/domain/repositories/billing_settings_repository.dart';

class MockBillingSettingsRemoteDataSource extends Mock
    implements BillingSettingsRemoteDataSource {}

void main() {
  group(
    'Get billingSettings from remote datasource',
    () {
      late BillingSettingsRemoteDataSource mockBillingSettingsRemoteDataSource;
      late BillingSettingsRepository billingSettingsRepository;

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
          mockBillingSettingsRemoteDataSource =
              MockBillingSettingsRemoteDataSource();
          billingSettingsRepository = BillingSettingsRepositoryImpl(
            billingSettingsRemoteDataSource:
                mockBillingSettingsRemoteDataSource,
          );
        },
      );

      test(
        'When update() go success, should return 200',
        () async {
          when(() => mockBillingSettingsRemoteDataSource.update(
                tUpdateParams,
              )).thenAnswer(
            (_) async => Empty(),
          );

          final result = await billingSettingsRepository.update(
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
        'When BillingSettings has failure, should return Failure',
        () async {
          when(() => mockBillingSettingsRemoteDataSource.update(
                tUpdateParams,
              )).thenThrow(
            Exception(),
          );

          final result = await billingSettingsRepository.update(
            tUpdateParams,
          );

          final foldedResult = result.fold(
            (l) => l,
            (r) => r,
          );

          expect(foldedResult, isA<Failure>());
        },
      );
    },
  );
}
