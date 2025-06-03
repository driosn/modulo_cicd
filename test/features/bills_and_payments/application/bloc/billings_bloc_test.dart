import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/bills_and_payments/application/bloc/billings_bloc.dart';
import 'package:resident_app/features/bills_and_payments/domain/entities/billings.dart';
import 'package:resident_app/features/bills_and_payments/domain/repositories/billings_repository.dart';

class MockBillingsRepository extends Mock implements BillingsRepository {}

void main() {
  group(
    BillingsEvent.getBillings,
    () {
      late BillingsRepository mockBillingsRepository;

      const billings = Billings(
        billings: [],
      );

      const String companyId = 'tCompanyId';
      const String residentId = 'tResidentId';

      setUp(
        () {
          mockBillingsRepository = MockBillingsRepository();
        },
      );

      blocTest<BillingsBloc, BillingsState>(
        'emits [Loading, Success](statuses) when GetByCompanyIdResidentId is added.',
        build: () => BillingsBloc(
          billingsRepository: mockBillingsRepository,
        ),
        act: (bloc) {
          when(() => mockBillingsRepository.getByCompanyIdResidentId(
              companyId, residentId)).thenAnswer(
            (_) async => const Right(billings),
          );

          return bloc.add(const BillingsEvent.getBillings(
            companyId: companyId,
            residentId: residentId,
          ));
        },
        expect: () => <BillingsState>[
          const BillingsState(billingsStatus: BillingsStatus.loading),
          const BillingsState(
            billingsStatus: BillingsStatus.success,
            billingHistory: billings,
          ),
        ],
      );

      blocTest<BillingsBloc, BillingsState>(
        'emits [Loading, Failure](statuses) when GetByCompanyIdResidentId is added.',
        build: () => BillingsBloc(
          billingsRepository: mockBillingsRepository,
        ),
        act: (bloc) {
          when(() => mockBillingsRepository.getByCompanyIdResidentId(
              companyId, residentId)).thenAnswer(
            (_) async => Left(Failure(message: 'tMessage')),
          );

          return bloc.add(const BillingsEvent.getBillings(
            companyId: companyId,
            residentId: residentId,
          ));
        },
        expect: () => <BillingsState>[
          const BillingsState(billingsStatus: BillingsStatus.loading),
          const BillingsState(
            billingsStatus: BillingsStatus.failure,
          ),
        ],
      );
    },
  );
}
