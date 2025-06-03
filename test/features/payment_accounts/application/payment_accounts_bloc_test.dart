import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/core/data/models/account_type.dart';
import 'package:resident_app/core/presentation/widgets/forms/new_payment_account/entities/new_payment_account.dart';
import 'package:resident_app/core/shared/common/empty.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/payment_account/application/bloc/payment_accounts_bloc.dart';
import 'package:resident_app/features/payment_account/common/error_parser.dart';
import 'package:resident_app/features/payment_account/common/payment_account_create_params.dart';
import 'package:resident_app/features/payment_account/common/payment_account_update_params.dart';
import 'package:resident_app/features/payment_account/data/datasources/payment_accounts_remote_datasource.dart';
import 'package:resident_app/features/payment_account/data/repositories/payment_accounts_repository_impl.dart';
import 'package:resident_app/features/payment_account/domain/entities/payment_accounts.dart';
import 'package:resident_app/features/payment_account/domain/repositories/payment_accounts_repository.dart';
import 'package:resident_app/features/payment_account/enums/payment_account.dart';

import '../data/repositories/payment_accounts_repository_impl_test.dart';

class MockPaymentAccountsRepository extends Mock
    implements PaymentAccountsRepository {}

void main() {
  group(
    PaymentAccountsEvent.getPaymentAccounts,
    () {
      late PaymentAccountsRepository mockPaymentAccountsRepository;
      // late BankAccountType mockBankAccountType;

      const paymentAccounts = PaymentAccounts(
        paymentAccountId: "tPaymentAccountId",
        paymentProcessor: PaymentProcessor(
          paymentProcessorType: "tPaymentProcessorType",
          paymentProcessorTypeDescription: "tPaymentProcessorTypeDescription",
        ),
        bankAccountOption: BankAccountOption(
          bankAccountType: BankAccountType.checking,
          bankAccountTypeDescription: "tBankAccountTypeDescription",
        ),
        bankRoutingNumber: 'tBankRoutingNumber',
        bankAccountEnding: 'tBankAccountEnding',
        maskedBankAccountNumber: 'tMaskedBankAccountNumber',
        creditCardEnding: 'tCreditCardEnding',
        maskedCreditCardAccountNumber: 'tMaskedCreditCardAccountNumber',
      );

      const String residentId = 'tResidentId';

      setUp(
        () {
          mockPaymentAccountsRepository = MockPaymentAccountsRepository();
        },
      );

      blocTest<PaymentAccountsBloc, PaymentAccountsState>(
        'emits [Loading, Success](statuses) when GetByResidentId is added.',
        build: () => PaymentAccountsBloc(
          paymentAccountsRepository: mockPaymentAccountsRepository,
        ),
        act: (bloc) {
          when(() => mockPaymentAccountsRepository.getByResidentId(residentId))
              .thenAnswer(
            (_) async => const Right(paymentAccounts),
          );

          return bloc.add(const PaymentAccountsEvent.getPaymentAccounts(
            residentId: residentId,
          ));
        },
        expect: () => <PaymentAccountsState>[
          const PaymentAccountsState(
              paymentAccountsStatus: PaymentAccountsStatus.loading),
          const PaymentAccountsState(
            paymentAccountsStatus: PaymentAccountsStatus.success,
            paymentAccounts: paymentAccounts,
          ),
        ],
      );

      blocTest<PaymentAccountsBloc, PaymentAccountsState>(
        'emits [Loading, Failure](statuses) when GetByResidentId is added.',
        build: () => PaymentAccountsBloc(
          paymentAccountsRepository: mockPaymentAccountsRepository,
        ),
        act: (bloc) {
          when(() => mockPaymentAccountsRepository.getByResidentId(residentId))
              .thenAnswer(
            (_) async => Left(Failure(message: 'tMessage')),
          );

          return bloc.add(const PaymentAccountsEvent.getPaymentAccounts(
            residentId: residentId,
          ));
        },
        expect: () => <PaymentAccountsState>[
          const PaymentAccountsState(
              paymentAccountsStatus: PaymentAccountsStatus.loading),
          const PaymentAccountsState(
            paymentAccountsStatus: PaymentAccountsStatus.failure,
          ),
        ],
      );
    },
  );

  group(
    PaymentAccountsEvent.deletePaymentAccounts,
    () {
      late PaymentAccountsRepository mockPaymentAccountsRepository;

      const String residentId = 'tResidentId';

      setUp(
        () {
          mockPaymentAccountsRepository = MockPaymentAccountsRepository();
        },
      );

      blocTest<PaymentAccountsBloc, PaymentAccountsState>(
        'emits [Loading, Success](statuses) when DeleteByResidentId is added.',
        build: () => PaymentAccountsBloc(
          paymentAccountsRepository: mockPaymentAccountsRepository,
        ),
        act: (bloc) {
          when(() =>
                  mockPaymentAccountsRepository.deleteByResidentId(residentId))
              .thenAnswer(
            (_) async => Right(Empty()),
          );

          return bloc.add(const PaymentAccountsEvent.deletePaymentAccounts(
            residentId: residentId,
          ));
        },
        expect: () => <PaymentAccountsState>[
          const PaymentAccountsState(
            deleteStatus: PaymentAccountsOperationStatus.processing(),
          ),
          const PaymentAccountsState(
            deleteStatus: PaymentAccountsOperationStatus.success(),
          ),
        ],
      );

      blocTest<PaymentAccountsBloc, PaymentAccountsState>(
        'emits [Loading, Failure](statuses) when DeleteByResidentId is added.',
        build: () => PaymentAccountsBloc(
          paymentAccountsRepository: mockPaymentAccountsRepository,
        ),
        act: (bloc) {
          when(() =>
                  mockPaymentAccountsRepository.deleteByResidentId(residentId))
              .thenAnswer(
            (_) async => Left(
              Failure(message: 'tMessage'),
            ),
          );

          return bloc.add(const PaymentAccountsEvent.deletePaymentAccounts(
            residentId: residentId,
          ));
        },
        expect: () => <PaymentAccountsState>[
          const PaymentAccountsState(
            deleteStatus: PaymentAccountsOperationStatus.processing(),
          ),
          const PaymentAccountsState(
            deleteStatus: PaymentAccountsOperationStatus.failure(
              MAError.badRequest(
                message: 'tMessage',
              ),
            ),
          ),
        ],
      );
    },
  );

  group(
    PaymentAccountsEvent.create,
    () {
      late PaymentAccountsRemoteDataSource mockPaymentAccountsRemoteDataSource;
      late ErrorParser mockErrorParser;
      late PaymentAccountsRepository paymentAccountsRepository;

      const residentId = 'tResidentId';
      const residentUserId = 'tResidentUserId';
      const newPaymentAccount = NewPaymentAccount(
        type: AccountType(
          name: "Checking",
          value: "tValue",
        ),
        name: "tName",
        routingNumber: "tRoutingNumber",
        number: "tNumber",
        institutionNumber: "tInstitutionNumber",
        transitNumber: "tTransitNumber",
      );

      const paymentAccountsCreateParams = PaymentAccountsCreateParams(
        residentId: residentId,
        residentUserId: residentUserId,
        newPaymentAccount: newPaymentAccount,
      );

      setUp(
        () {
          mockPaymentAccountsRemoteDataSource =
              MockPaymentAccountsRemoteDataSource();
          mockErrorParser = ErrorParser();
          paymentAccountsRepository = PaymentAccountsRepositoryImpl(
            paymentAccountsRemoteDataSource:
                mockPaymentAccountsRemoteDataSource,
            errorParser: mockErrorParser,
          );
        },
      );

      blocTest<PaymentAccountsBloc, PaymentAccountsState>(
        'emits [Creating, Error] when create is added and repository returns error',
        build: () {
          when(
            () => paymentAccountsRepository.create(
              paymentAccountsCreateParams,
            ),
          ).thenAnswer(
            (_) async => const Left(
              MAError.unexpected(),
            ),
          );

          return PaymentAccountsBloc(
            paymentAccountsRepository: paymentAccountsRepository,
          );
        },
        act: (bloc) {
          bloc.add(
            const PaymentAccountsEvent.create(
              residentId: residentId,
              residentUserId: residentUserId,
              paymentAccount: newPaymentAccount,
            ),
          );
        },
        expect: () => <PaymentAccountsState>[
          const PaymentAccountsState(
            createStatus: PaymentAccountsOperationStatus.processing(),
          ),
          const PaymentAccountsState(
            createStatus: PaymentAccountsOperationStatus.failure(
              MAError.unexpected(),
            ),
          ),
          const PaymentAccountsState(
            createStatus: PaymentAccountsOperationStatus.initial(),
          ),
        ],
      );
    },
  );

  group(
    PaymentAccountsEvent.update,
    () {
      late PaymentAccountsRemoteDataSource mockPaymentAccountsRemoteDataSource;
      late ErrorParser mockErrorParser;
      late PaymentAccountsRepository paymentAccountsRepository;

      const residentId = 'tResidentId';
      const residentUserId = 'tResidentUserId';
      const paymentAccountId = 'tPaymentAccountId';
      const newPaymentAccount = NewPaymentAccount(
        type: AccountType(
          name: "Checking",
          value: "tValue",
        ),
        name: "tName",
        routingNumber: "tRoutingNumber",
        number: "tNumber",
        institutionNumber: "tInstitutionNumber",
        transitNumber: "tTransitNumber",
      );

      const paymentAccountsUpdateParams = PaymentAccountsUpdateParams(
        paymentAccountId: paymentAccountId,
        residentId: residentId,
        residentUserId: residentUserId,
        newPaymentAccount: newPaymentAccount,
      );

      setUp(
        () {
          mockPaymentAccountsRemoteDataSource =
              MockPaymentAccountsRemoteDataSource();
          mockErrorParser = ErrorParser();
          paymentAccountsRepository = PaymentAccountsRepositoryImpl(
            paymentAccountsRemoteDataSource:
                mockPaymentAccountsRemoteDataSource,
            errorParser: mockErrorParser,
          );
        },
      );

      blocTest<PaymentAccountsBloc, PaymentAccountsState>(
        'emits [Updating, Error] when update is added and repository returns error',
        build: () {
          when(
            () => paymentAccountsRepository.update(
              paymentAccountsUpdateParams,
            ),
          ).thenAnswer(
            (_) async => const Left(
              MAError.unexpected(),
            ),
          );

          return PaymentAccountsBloc(
            paymentAccountsRepository: paymentAccountsRepository,
          );
        },
        act: (bloc) {
          bloc.add(
            const PaymentAccountsEvent.update(
              residentId: residentId,
              residentUserId: residentUserId,
              paymentAccount: newPaymentAccount,
            ),
          );
        },
        expect: () => <PaymentAccountsState>[
          const PaymentAccountsState(
            updateStatus: PaymentAccountsOperationStatus.processing(),
          ),
          const PaymentAccountsState(
            updateStatus: PaymentAccountsOperationStatus.failure(
              MAError.unexpected(),
            ),
          ),
        ],
      );
    },
  );
}
