import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/features/bills_and_payments/domain/entities/billings.dart';
import 'package:resident_app/features/bills_and_payments/domain/repositories/billings_repository.dart';

part 'billings_bloc.freezed.dart';
part 'billings_event.dart';
part 'billings_state.dart';

class BillingsBloc extends Bloc<BillingsEvent, BillingsState> {
  BillingsBloc({
    required BillingsRepository billingsRepository,
  })  : _billingsRepository = billingsRepository,
        super(const BillingsState()) {
    on<_GetBillingsEvent>(_onGetBillingsEvent);
    on<_GetBillingPDFEvent>(_onGetBillingPDFEvent);
    on<_RestartBillingsEvent>(_onRestartBillingsEvent);
  }

  final BillingsRepository _billingsRepository;

  void _onGetBillingsEvent(
    _GetBillingsEvent event,
    Emitter<BillingsState> emit,
  ) async {
    final String companyId = event.companyId;
    final String residentId = event.residentId;

    emit(
      state.copyWith(
        billingsStatus: BillingsStatus.loading,
      ),
    );

    final billingsResponse = await _billingsRepository.getByCompanyIdResidentId(
        companyId, residentId);

    billingsResponse.fold(
      (failure) {
        emit(
          state.copyWith(
            billingsStatus: BillingsStatus.failure,
          ),
        );
      },
      (billingHistory) {
        emit(
          state.copyWith(
            billingsStatus: BillingsStatus.success,
            billingHistory: billingHistory,
          ),
        );
      },
    );
  }

  void _onGetBillingPDFEvent(
    _GetBillingPDFEvent event,
    Emitter<BillingsState> emit,
  ) async {
    emit(
      state.copyWith(
        billingPDFStatus: BillingsStatus.loading,
      ),
    );

    final billingsResponse =
        await _billingsRepository.getBillingPDF(event.billingId);

    billingsResponse.fold(
      (failure) {
        emit(
          state.copyWith(
            billingPDFStatus: BillingsStatus.failure,
          ),
        );
      },
      (billingPDF) {
        emit(
          state.copyWith(
            billingPDFStatus: BillingsStatus.success,
            billingPDF: billingPDF,
            billingLabel: event.billingLabel,
          ),
        );
      },
    );
  }

  void _onRestartBillingsEvent(
    _RestartBillingsEvent event,
    Emitter<BillingsState> emit,
  ) {
    emit(
      state.copyWith(
        billingsStatus: BillingsStatus.initial,
        billingPDFStatus: BillingsStatus.initial,
      ),
    );
  }
}
