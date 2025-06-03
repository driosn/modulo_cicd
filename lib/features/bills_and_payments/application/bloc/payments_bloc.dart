import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/features/bills_and_payments/domain/entities/payments.dart';
import 'package:resident_app/features/bills_and_payments/domain/repositories/payments_repository.dart';

part 'payments_bloc.freezed.dart';
part 'payments_event.dart';
part 'payments_state.dart';

class PaymentsBloc extends Bloc<PaymentsEvent, PaymentsState> {
  PaymentsBloc({
    required PaymentsRepository paymentsRepository,
  })  : _paymentsRepository = paymentsRepository,
        super(const PaymentsState()) {
    on<_GetPaymentsEvent>(_onGetPaymentsEvent);
    on<_RestartPaymentsEvent>(_onRestartPaymentsEvent);
  }

  final PaymentsRepository _paymentsRepository;

  void _onGetPaymentsEvent(
    _GetPaymentsEvent event,
    Emitter<PaymentsState> emit,
  ) async {
    emit(
      state.copyWith(
        paymentsStatus: PaymentsStatus.loading,
      ),
    );

    final paymentsResponse =
        await _paymentsRepository.getByPropertyId(event.propertyId);

    paymentsResponse.fold(
      (failure) {
        emit(
          state.copyWith(
            paymentsStatus: PaymentsStatus.failure,
          ),
        );
      },
      (paymentHistory) {
        emit(
          state.copyWith(
            paymentsStatus: PaymentsStatus.success,
            paymentHistory: paymentHistory,
          ),
        );
      },
    );
  }

  void _onRestartPaymentsEvent(
    _RestartPaymentsEvent event,
    Emitter<PaymentsState> emit,
  ) {
    emit(
      state.copyWith(
        paymentsStatus: PaymentsStatus.initial,
        paymentHistory: Payments.empty,
      ),
    );
  }
}
