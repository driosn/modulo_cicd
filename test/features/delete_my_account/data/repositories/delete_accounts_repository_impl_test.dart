import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/core/shared/common/empty.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/delete_my_account/data/datasources/delete_remote_datasource.dart';
import 'package:resident_app/features/delete_my_account/data/repositories/delete_accounts_repository_impl.dart';
import 'package:resident_app/features/payment_account/common/error_parser.dart';

class MockDeleteRemoteDataSource extends Mock implements DeleteRemoteDataSource {}

class MockErrorParser extends Mock implements ErrorParser {}

void main() {
  group(
    'Delete account from remote datasource',
        () {
      late DeleteRemoteDataSource mockDeleteRemoteDataSource;
      late ErrorParser mockErrorParser;
      late DeleteAccountsRepositoryImpl deleteAccountsRepository;

      const tResidentId = 'test_resident_id';

      setUp(() {
        mockDeleteRemoteDataSource = MockDeleteRemoteDataSource();
        mockErrorParser = MockErrorParser();
        deleteAccountsRepository = DeleteAccountsRepositoryImpl(
          deleteRemoteDataSource: mockDeleteRemoteDataSource,
          errorParser: mockErrorParser,
        );
      });
      test(
        'When deleteAccount() succeeds, should return Empty',
            () async {
          // Arrange: Mock successful deleteAccount() response
          when(() => mockDeleteRemoteDataSource.deleteAccount(tResidentId))
              .thenAnswer((_) async => Empty());

          // Act: Call deleteAccount()
          final result = await deleteAccountsRepository.deleteAccount(tResidentId);

          // Assert: Ensure it returns Right(Empty())
          expect(result, isA<Right<MAError, Empty>>());
          // Verify: deleteAccount() was called once
          verify(() => mockDeleteRemoteDataSource.deleteAccount(tResidentId)).called(1);
        },
      );

      test(
        'When deleteAccount() fails with DioException, should return MAError',
            () async {
          // Arrange: Mock DioException with error response
          final errorResponse = {
            'errorDetails': {'message': 'Failed to delete account'}
          };
          final dioException = DioException(
            requestOptions: RequestOptions(path: ''),
            response: Response(
              data: jsonEncode(errorResponse),
              statusCode: 400,
              requestOptions: RequestOptions(path: ''),
            ),
          );

          when(() => mockDeleteRemoteDataSource.deleteAccount(tResidentId)).thenThrow(dioException);

          // Act: Call deleteAccount()
          final result = await deleteAccountsRepository.deleteAccount(tResidentId);

          // Assert: Ensure it returns Left(MAError)
          expect(result, isA<Left<MAError, Empty>>());

          // Verify: deleteAccount() was called once
          verify(() => mockDeleteRemoteDataSource.deleteAccount(tResidentId)).called(1);
        },
      );

      test(
        'When deleteAccount() fails with an unknown exception, should return MAError.unexpected',
            () async {
          // Arrange: Mock an unexpected exception
          when(() => mockDeleteRemoteDataSource.deleteAccount(tResidentId)).thenThrow(Exception());

          // Act: Call deleteAccount()
          final result = await deleteAccountsRepository.deleteAccount(tResidentId);

          // Assert: Ensure it returns Left(MAError.unexpected)
          expect(result, isA<Left<MAError, Empty>>());

          // Verify: deleteAccount() was called once
          verify(() => mockDeleteRemoteDataSource.deleteAccount(tResidentId)).called(1);
        },
      );
    },
  );
}
