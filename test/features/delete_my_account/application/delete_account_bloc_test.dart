import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/core/shared/common/empty.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/delete_my_account/application/bloc/delete_account_bloc.dart';
import 'package:resident_app/features/delete_my_account/data/repositories/DeleteAccountsRepository.dart';

class MockDeleteAccountRepository extends Mock implements DeleteAccountRepository {}

void main() {
  late DeleteAccountBloc deleteAccountBloc;
  late MockDeleteAccountRepository mockDeleteAccountRepository;

  setUp(() {
    mockDeleteAccountRepository = MockDeleteAccountRepository();
    deleteAccountBloc = DeleteAccountBloc(accountRepository: mockDeleteAccountRepository);
  });

  tearDown(() {
    deleteAccountBloc.close();
  });

  group('DeleteAccountBloc', () {
    const residentId = 'test_resident_id';

    blocTest<DeleteAccountBloc, DeleteAccountState>(
      'emits [DeleteAccountState.loading, DeleteAccountState.success] when delete is successful',
      build: () {
        when(() => mockDeleteAccountRepository.deleteAccount(residentId)).thenAnswer((_) async => Right(Empty()));
        return deleteAccountBloc;
      },
      act: (bloc) => bloc.add(DeleteAccountEvent.delete(residentId: residentId)),
      expect: () => [
        const DeleteAccountState(status: DeleteAccountStatus.loading()),
        const DeleteAccountState(status: DeleteAccountStatus.success()),
      ],
      verify: (_) {
        verify(() => mockDeleteAccountRepository.deleteAccount(residentId)).called(1);
      },
    );

    blocTest<DeleteAccountBloc, DeleteAccountState>(
      'emits [DeleteAccountState.loading, DeleteAccountState.failure] when delete fails',
      build: () {
        when(() => mockDeleteAccountRepository.deleteAccount(residentId))
            .thenAnswer((_) async => const Left(MAError.unexpected(message: 'Failed to delete account')));
        return deleteAccountBloc;
      },
      act: (bloc) => bloc.add(DeleteAccountEvent.delete(residentId: residentId)),
      expect: () => [
        DeleteAccountState(status: DeleteAccountStatus.loading()),
        DeleteAccountState(
            status: DeleteAccountStatus.failure(MAError.unexpected(message: 'Failed to delete account'))),
      ],
      verify: (_) {
        verify(() => mockDeleteAccountRepository.deleteAccount(residentId)).called(1);
      },
    );
  });
}
