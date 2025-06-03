import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/presentation/widgets/forms/new_payment_account/new_payment_account_form.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/payment_account/common/payment_account_create_params.dart';
import 'package:resident_app/features/payment_account/common/payment_account_update_params.dart';
import 'package:resident_app/features/payment_account/domain/entities/payment_accounts.dart';
import 'package:resident_app/features/payment_account/domain/repositories/payment_accounts_repository.dart';
import 'package:resident_app/features/payment_account/enums/payment_account.dart';

part 'payment_accounts_bloc.freezed.dart';
part 'payment_accounts_event.dart';
part 'payment_accounts_state.dart';

class PaymentAccountsBloc
    extends Bloc<PaymentAccountsEvent, PaymentAccountsState> {
  PaymentAccountsBloc({
    required PaymentAccountsRepository paymentAccountsRepository,
  })  : _paymentAccountsRepository = paymentAccountsRepository,
        super(const PaymentAccountsState()) {
    on<_GetPaymentAccountsEvent>(_onGetPaymentAccountsEvent);
    on<_SetIsRBCPaymentAccountEvent>(_onSetIsRBCPaymentAccountEvent);
    on<_CreatePaymentAccountsEvent>(_onCreateEvent);
    on<_UpdatePaymentAccountsEvent>(_onUpdateEvent);
    on<_DeletePaymentAccountsEvent>(_onDeletePaymentAccountsEvent);
    on<_RestartPaymentAccountsEvent>(_onRestartPaymentAccountsEvent);
  }

  final PaymentAccountsRepository _paymentAccountsRepository;

  void _onGetPaymentAccountsEvent(
    _GetPaymentAccountsEvent event,
    Emitter<PaymentAccountsState> emit,
  ) async {
    final String residentId = event.residentId;

    emit(
      state.copyWith(
        paymentAccountsStatus: PaymentAccountsStatus.loading,
      ),
    );

    final paymentAccountsResponse =
        await _paymentAccountsRepository.getByResidentId(residentId);

    paymentAccountsResponse.fold(
      (failure) {
        emit(
          state.copyWith(
            paymentAccountsStatus: PaymentAccountsStatus.failure,
          ),
        );
      },
      (paymentAccounts) {
        emit(
          state.copyWith(
            paymentAccountsStatus: PaymentAccountsStatus.success,
            paymentAccounts: paymentAccounts,
          ),
        );
      },
    );
  }

  void _onSetIsRBCPaymentAccountEvent(
    _SetIsRBCPaymentAccountEvent event,
    Emitter<PaymentAccountsState> emit,
  ) {
    emit(
      state.copyWith(
        isRBCPaymentAccount: event.isRBCPaymentAccount,
      ),
    );
  }

  void _onCreateEvent(
    _CreatePaymentAccountsEvent event,
    Emitter<PaymentAccountsState> emit,
  ) async {
    emit(
      state.copyWith(
        createStatus: const _Processing(),
      ),
    );

    PaymentAccountsCreateParams createParams = PaymentAccountsCreateParams(
      residentId: event.residentId,
      residentUserId: event.residentUserId,
      newPaymentAccount: event.paymentAccount,
    );

    final failureOrSuccess =
        await _paymentAccountsRepository.create(createParams);

    failureOrSuccess.fold(
      (error) {
        emit(
          state.copyWith(
            createStatus: _Failure(error),
          ),
        );
      },
      (success) {
        emit(
          state.copyWith(
            createStatus: const _Success(),
            paymentAccounts: PaymentAccounts(
              paymentAccountId: "",
              paymentProcessor: PaymentProcessor(
                paymentProcessorType:
                    PaymentProcessorType.intelliPay.toString(),
                paymentProcessorTypeDescription:
                    PaymentProcessorType.intelliPay.toString(),
              ),
              bankAccountOption: BankAccountOption(
                // bankAccountType: event.paymentAccount.type.name,
                bankAccountType: BankAccountType.values
                    .byName(event.paymentAccount.type.name.toLowerCase()),
                // bankAccountType: event.paymentAccount.type.name == "Checking"
                //     ? BankAccountType.checking
                //     : BankAccountType.savings,
                bankAccountTypeDescription: event.paymentAccount.type.name,
              ),
              bankRoutingNumber: event.paymentAccount.routingNumber,
              bankAccountEnding: event.paymentAccount.number,
              maskedBankAccountNumber: event.paymentAccount.number,
              creditCardEnding: '',
              maskedCreditCardAccountNumber: '',
            ),
          ),
        );
      },
    );

    emit(
      state.copyWith(
        createStatus: const _Initial(),
      ),
    );
  }

  void _onUpdateEvent(
    _UpdatePaymentAccountsEvent event,
    Emitter<PaymentAccountsState> emit,
  ) async {
    emit(
      state.copyWith(
        updateStatus: const _Processing(),
      ),
    );

    PaymentAccountsUpdateParams updateParams = PaymentAccountsUpdateParams(
      paymentAccountId: state.paymentAccounts.paymentAccountId,
      residentId: event.residentId,
      residentUserId: event.residentUserId,
      newPaymentAccount: event.paymentAccount,
    );

    final failureOrSuccess =
        await _paymentAccountsRepository.update(updateParams);

    failureOrSuccess.fold(
      (error) {
        emit(
          state.copyWith(
            updateStatus: _Failure(error),
          ),
        );
      },
      (success) {
        emit(
          state.copyWith(
            updateStatus: const _Success(),
            paymentAccounts: PaymentAccounts(
              paymentAccountId: "",
              paymentProcessor: const PaymentProcessor(
                paymentProcessorType: "IntelliPay",
                paymentProcessorTypeDescription: "IntelliPay",
              ),
              bankAccountOption: BankAccountOption(
                bankAccountType: BankAccountType.values
                    .byName(event.paymentAccount.type.name.toLowerCase()),
                bankAccountTypeDescription: event.paymentAccount.type.name,
              ),
              bankRoutingNumber: event.paymentAccount.routingNumber,
              bankAccountEnding: event.paymentAccount.number,
              maskedBankAccountNumber: event.paymentAccount.number,
              creditCardEnding: '',
              maskedCreditCardAccountNumber: '',
            ),
          ),
        );
      },
    );
  }

  void _onDeletePaymentAccountsEvent(
    _DeletePaymentAccountsEvent event,
    Emitter<PaymentAccountsState> emit,
  ) async {
    final String residentId = event.residentId;

    emit(
      state.copyWith(
        deleteStatus: const _Processing(),
      ),
    );

    final paymentAccountsResponse =
        await _paymentAccountsRepository.deleteByResidentId(residentId);

    paymentAccountsResponse.fold(
      (failure) {
        emit(
          state.copyWith(
            deleteStatus: _Failure(
              MAError.badRequest(
                message: failure.message,
              ),
            ),
          ),
        );
      },
      (paymentAccounts) {
        emit(
          state.copyWith(
            deleteStatus: const _Success(),
            paymentAccounts: PaymentAccounts.empty,
          ),
        );
      },
    );
  }

  void _onRestartPaymentAccountsEvent(
    _RestartPaymentAccountsEvent event,
    Emitter<PaymentAccountsState> emit,
  ) {
    emit(
      state.copyWith(
        paymentAccountsStatus: PaymentAccountsStatus.initial,
        createStatus: const _Initial(),
        updateStatus: const _Initial(),
        deleteStatus: const _Initial(),
      ),
    );
  }
}
