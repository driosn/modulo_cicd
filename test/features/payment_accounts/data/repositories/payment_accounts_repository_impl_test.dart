import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/core/data/models/account_type.dart';
import 'package:resident_app/core/presentation/widgets/forms/new_payment_account/entities/new_payment_account.dart';
import 'package:resident_app/core/shared/common/empty.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/payment_account/common/error_parser.dart';
import 'package:resident_app/features/payment_account/common/payment_account_create_params.dart';
import 'package:resident_app/features/payment_account/data/datasources/payment_accounts_remote_datasource.dart';
import 'package:resident_app/features/payment_account/data/models/payment_accounts_model.dart';
import 'package:resident_app/features/payment_account/data/repositories/payment_accounts_repository_impl.dart';
import 'package:resident_app/features/payment_account/domain/entities/payment_accounts.dart';
import 'package:resident_app/features/payment_account/domain/repositories/payment_accounts_repository.dart';

class MockPaymentAccountsRemoteDataSource extends Mock
    implements PaymentAccountsRemoteDataSource {}

void main() {
  group(
    'getByResidentId() - Get paymentAccounts from remote datasource',
    () {
      late PaymentAccountsRemoteDataSource mockPaymentAccountsRemoteDataSource;
      late ErrorParser mockErrorParser;
      late PaymentAccountsRepository paymentAccountsRepository;

      PaymentAccountsModel tPaymentAccounts = const PaymentAccountsModel();

      String residentId = 'tResidentId';

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

      test(
        'When getByResidentId() go success, should return PaymentAccounts',
        () async {
          when(() => mockPaymentAccountsRemoteDataSource.getByResidentId(
                residentId,
              )).thenAnswer(
            (_) async => tPaymentAccounts,
          );

          final result = await paymentAccountsRepository.getByResidentId(
            residentId,
          );

          final foldedResult = result.fold(
            (l) => l,
            (r) => r,
          );

          expect(foldedResult, isA<PaymentAccounts>());
        },
      );

      test(
        'When getByResidentId() has failure, should return Failure',
        () async {
          when(() => mockPaymentAccountsRemoteDataSource.getByResidentId(
                residentId,
              )).thenThrow(
            Exception(),
          );

          final result = await paymentAccountsRepository.getByResidentId(
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

  group(
    'create() - Create paymentAccounts from remote datasource',
    () {
      late PaymentAccountsRemoteDataSource mockPaymentAccountsRemoteDataSource;
      late ErrorParser mockErrorParser;
      late PaymentAccountsRepository paymentAccountsRepository;

      const residentId = 'tResidentId';
      const residentUserId = 'tResidentUserId';

      const newPaymentAccount = NewPaymentAccount(
        type: AccountType(
          name: "tName",
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

      test(
        'When create() go success, should return PaymentAccounts',
        () async {
          when(() => mockPaymentAccountsRemoteDataSource.create(
                paymentAccountsCreateParams,
              )).thenAnswer(
            (_) async => Empty(),
          );

          final result = await paymentAccountsRepository
              .create(paymentAccountsCreateParams);

          final foldedResult = result.fold(
            (l) => l,
            (r) => r,
          );

          expect(foldedResult, isA<Empty>());
        },
      );

      test(
        'When create() has failure, should return Failure',
        () async {
          when(() => mockPaymentAccountsRemoteDataSource.create(
                paymentAccountsCreateParams,
              )).thenThrow(
            Exception(),
          );

          final result = await paymentAccountsRepository
              .create(paymentAccountsCreateParams);

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
