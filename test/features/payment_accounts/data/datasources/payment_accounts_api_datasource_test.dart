import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/features/payment_account/data/datasources/payment_accounts_api_datasource.dart';
import 'package:resident_app/features/payment_account/data/datasources/payment_accounts_remote_datasource.dart';
import 'package:resident_app/features/payment_account/data/models/payment_accounts_model.dart';

import '../../../mocks.dart';

void main() {
  group(
    'getPaymentAccounts() - Get paymentAccounts from RPM API',
    () {
      late Dio mockDio;
      late PaymentAccountsRemoteDataSource remoteDataSource;

      const tResidentUserId = 'tResidentUserId';

      final tPaymentAccountsNotEmptyMap = {
        "paymentProcessor": {
          "paymentProcessorType": "IntelliPay",
          "paymentProcessorTypeDescription": "IntelliPay"
        },
        "bankAccountOption": {
          "bankAccountType": "Checking",
          "bankAccountTypeDescription": "Checking"
        },
        "bankRoutingNumber": "091408734",
        "bankAccountEnding": "X222",
        "maskedBankAccountNumber": "2XXXX222",
        "creditCardEnding": "",
        "maskedCreditCardAccountNumber": ""
      };

      setUp(
        () {
          mockDio = MockDio();
          remoteDataSource = PaymentAccountsApiDataSource(
            dio: mockDio,
          );
        },
      );

      test(
        'Should return a non empty paymentAccounts if all goes success',
        () async {
          when(
            () => mockDio.get(
              any(),
              queryParameters: any(named: 'queryParameters'),
            ),
          ).thenAnswer(
            (_) async => Response(
              statusCode: 200,
              requestOptions: RequestOptions(),
              data: tPaymentAccountsNotEmptyMap,
            ),
          );

          final paymentAccounts =
              await remoteDataSource.getByResidentId(tResidentUserId);

          expect(paymentAccounts, isA<PaymentAccountsModel>());
        },
      );

      test(
        'Should catch exception',
        () async {
          when(
            () => mockDio.get(
              any(),
              queryParameters: any(named: 'queryParameters'),
            ),
          ).thenThrow(
            Exception(),
          );

          expect(
            remoteDataSource.getByResidentId(tResidentUserId),
            throwsA(
              isA<Exception>(),
            ),
          );
        },
      );
    },
  );

  group(
    'deletePaymentAccounts() - Delete paymentAccounts from RPM API',
    () {
      late Dio mockDio;
      late PaymentAccountsRemoteDataSource remoteDataSource;

      const tResidentId = 'tResidentId';

      setUp(
        () {
          mockDio = MockDio();
          remoteDataSource = PaymentAccountsApiDataSource(
            dio: mockDio,
          );
        },
      );

      test(
        'Should delete a paymentAccounts if all goes success',
        () async {
          when(
            () => mockDio.delete(
              any(),
              queryParameters: any(named: 'queryParameters'),
            ),
          ).thenAnswer(
            (_) async => Response(
              statusCode: 200,
              requestOptions: RequestOptions(),
            ),
          );

          await remoteDataSource.deleteByResidentId(tResidentId);

          verify(
            () => mockDio.delete(
              '/Payments/DeleteBankAccount?residentId=$tResidentId',
            ),
          ).called(1);
        },
      );

      test(
        'Should catch exception',
        () async {
          when(
            () => mockDio.delete(
              any(),
              queryParameters: any(named: 'queryParameters'),
            ),
          ).thenThrow(
            Exception(),
          );

          expect(
            remoteDataSource.deleteByResidentId(tResidentId),
            throwsA(
              isA<Exception>(),
            ),
          );
        },
      );
    },
  );
}
