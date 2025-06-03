import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/bills_and_payments/data/datasources/billings_remote_datasource.dart';
import 'package:resident_app/features/bills_and_payments/data/models/billings_model.dart';
import 'package:resident_app/features/bills_and_payments/data/repositories/billings_repository_impl.dart';
import 'package:resident_app/features/bills_and_payments/domain/entities/billings.dart';
import 'package:resident_app/features/bills_and_payments/domain/repositories/billings_repository.dart';

class MockBillingsRemoteDataSource extends Mock
    implements BillingsRemoteDataSource {}

void main() {
  group(
    'getByCompanyIdResidentId() - Get questions from remote datasource',
    () {
      late BillingsRemoteDataSource mockBillingsRemoteDataSource;
      late BillingsRepository billingsRepository;

      BillingsModel tBillings = const BillingsModel();

      String companyId = 'tCompanyId';
      String residentId = 'tResidentId';

      setUp(
        () {
          mockBillingsRemoteDataSource = MockBillingsRemoteDataSource();
          billingsRepository = BillingsRepositoryImpl(
            billingsRemoteDataSource: mockBillingsRemoteDataSource,
          );
        },
      );

      test(
        'When getByCompanyIdResidentId() go success, should return Billings',
        () async {
          when(() => mockBillingsRemoteDataSource.getByCompanyIdResidentId(
                companyId,
                residentId,
              )).thenAnswer(
            (_) async => tBillings,
          );

          final result = await billingsRepository.getByCompanyIdResidentId(
            companyId,
            residentId,
          );

          final foldedResult = result.fold(
            (l) => l,
            (r) => r,
          );

          expect(foldedResult, isA<Billings>());
        },
      );

      test(
        'When getByCompanyIdResidentId() has failure, should return Failure',
        () async {
          when(() => mockBillingsRemoteDataSource.getByCompanyIdResidentId(
              companyId, residentId)).thenThrow(
            Exception(),
          );

          final result = await billingsRepository.getByCompanyIdResidentId(
            companyId,
            residentId,
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
