import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/shared/error/error.dart';
import '../../data/repositories/DeleteAccountsRepository.dart';

part 'delete_account_bloc.freezed.dart';

part 'delete_account_event.dart';

part 'delete_account_state.dart';

class DeleteAccountBloc extends Bloc<DeleteAccountEvent, DeleteAccountState> {
  DeleteAccountBloc({required DeleteAccountRepository accountRepository})
      : _accountRepository = accountRepository,
        super(const DeleteAccountState()) {
    on<DeleteAccountEvent>(_onDeleteAccountEvent);
  }

  final DeleteAccountRepository _accountRepository;

  Future<void> _onDeleteAccountEvent(
    DeleteAccountEvent event,
    Emitter<DeleteAccountState> emit,
  ) async {
    await event.when(
      delete: (residentId) async {
        emit(state.copyWith(status: DeleteAccountStatus.loading()));
        final failureOrSuccess = await _accountRepository.deleteAccount(residentId);

        failureOrSuccess.fold(
          (failure) {
            emit(state.copyWith(status: DeleteAccountStatus.failure(failure))); // Only message
          },
          (_) {
            emit(state.copyWith(status: DeleteAccountStatus.success()));
          },
        );
      },
    );
  }
}
