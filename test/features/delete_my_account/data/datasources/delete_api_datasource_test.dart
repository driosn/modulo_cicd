import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/features/delete_my_account/data/datasources/delete_remote_datasource.dart';
import 'package:resident_app/features/delete_my_account/data/datasources/delete_api_datasource.dart';

import '../../../mocks.dart';

void main() {
  group(
    'deleteAccount() - Delete account via API',
        () {
      late Dio mockDio;
      late DeleteRemoteDataSource deleteRemoteDataSource;

      const tResidentId = 'test_resident_id';

      setUp(() {
        mockDio = MockDio();
        deleteRemoteDataSource = DeleteApiDataSource(dio: mockDio);
      });

      test(
        'Should successfully delete the account when API returns 200',
            () async {
          // Arrange: Mock Dio's DELETE request to return a successful response
          when(() => mockDio.delete(any())).thenAnswer(
                (_) async => Response(
              statusCode: 200,
              requestOptions: RequestOptions(path: ''),
            ),
          );

          // Act: Call deleteAccount()
          await deleteRemoteDataSource.deleteAccount(tResidentId);

          // Assert: Ensure the DELETE request was called with the correct endpoint
          verify(() => mockDio.delete('/ResidentUser/DeleteResidentUser/$tResidentId')).called(1);
        },
      );

      test(
        'Should throw an exception when API call fails',
            () async {
          // Arrange: Mock Dio's DELETE request to throw an exception
          when(() => mockDio.delete(any())).thenThrow(Exception('Failed to delete account'));

          // Act & Assert: Ensure deleteAccount() throws an exception
          expect(
                () async => await deleteRemoteDataSource.deleteAccount(tResidentId),
            throwsA(isA<Exception>()),
          );

          // Assert: Ensure the DELETE request was attempted
          verify(() => mockDio.delete('/ResidentUser/DeleteResidentUser/$tResidentId')).called(1);
        },
      );
    },
  );
}
